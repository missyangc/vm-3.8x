#define _CRT_SECURE_NO_WARNINGS
#include <iostream>
#include "stdio.h"
#include "emu.h"
#include "regex"
#include "algorithm"
#include "Windows.h"
#include "istream"
#include <fstream>
#include <tlhelp32.h>
#include "asm2llvmir.h"
#include "llvm/IRReader/IRReader.h"


SEG_MAP segs[] = {
	// base			size			file name
	{0x14a000, 0x6000, (char *)"demox643.8.vmp_000000000014A000.bin", NULL},
	{0x140001000, 0x1000, (char *)"demox643.8.vmp_0000000140001000.bin", NULL},
	{0x140002000, 0x1000, (char *)"demox643.8.vmp_0000000140002000.bin", NULL},
	{0x140003000, 0x1000, (char *)"demox643.8.vmp_0000000140003000.bin", NULL},
	{0x140005000, 0x26E000, (char *)"demox643.8.vmp_0000000140005000.bin", NULL},

};

bool init_memory()
{

	for (int i = 0; i < sizeof(segs) / sizeof(SEG_MAP); i++)
	{

		segs[i].buf = (unsigned char *)malloc(segs[i].size);
		FILE *fp = fopen(segs[i].file_name, "rb");
		fread(segs[i].buf, segs[i].size, 1, fp);
		fclose(fp);
		// map memory for this emulation
		err = uc_mem_map(uc, segs[i].base, segs[i].size, UC_PROT_ALL);
		if (err != UC_ERR_OK)
		{
			printf("Failed on uc_mem_map() with error returned: %u\n", err);
			return false;
		}

		// write machine code to be emulated to memory
		err = uc_mem_write(uc, segs[i].base, segs[i].buf, segs[i].size);
		if (err != UC_ERR_OK)
		{
			printf("Failed on uc_mem_write() with error returned: %u\n", err);
			return false;
		}

		free(segs[i].buf);
	}

	return true;
}

void trace(basicblock bs, trace_callback call, void *context, int begin, int end = 0, bool backward = false)
{

	if (end == 0)
		if (backward)
			end = 0;
		else
			end = bs.size() - 1;

	if (backward)
	{
		for (int i = begin; i >= end; i--)
		{
			if (call(bs[i], context))
				break;
		}
	}
	else
	{
		for (int i = begin; i <= end; i++)
		{
			if (call(bs[i], context))
				break;
		}
	}
}

LONG64 vrsp_address = 0;
int vrsp_offset = 0;

void find_vm_entry()
{

	if (ins_records.size() == 0)
		return;

	auto insLast1 = ins_records[0]->at(ins_records[0]->size() - 1);
	auto insLast2 = ins_records[0]->at(ins_records[0]->size() - 2);

	cs_insn *insn1 = nullptr;
	cs_insn *insn2 = nullptr;
	char buffer[0x10] = {0};

	uc_mem_read(uc, insLast1.address, &buffer, insLast1.size);
	auto count1 = cs_disasm(handle, (const uint8_t *)buffer, insLast1.size, insLast1.address, 0, &insn1);

	uc_mem_read(uc, insLast2.address, &buffer, insLast2.size);
	auto count2 = cs_disasm(handle, (const uint8_t *)buffer, insLast2.size, insLast2.address, 0, &insn2);

	if (insn1->id == X86_INS_JMP || insn1->id == X86_INS_RET)
	{

		do
		{

			if (insn1->id == X86_INS_JMP)
			{

				if (insn2->id == X86_INS_XOR || insn2->id == X86_INS_OR)
				{
					auto reg = insn1->detail->x86.operands[0].reg;

					if (insn2->detail->x86.operands[0].reg == reg)
					{
						vm.v_base.u = insn2->detail->x86.operands[1].reg;
					}
					else
					{
						vm.v_base.u = insn2->detail->x86.operands[0].reg;
					}
					break;
				}
				else
				{
					vm.v_base.u = insn1->detail->x86.operands[0].reg;
					break;
				}
			}

			if (insn1->id == X86_INS_RET)
			{
				vm.v_base.u = insn2->detail->x86.operands[1].reg;
				break;
			}

		} while (0);

		printf("vm baseaddress reg = %s\n", cs_reg_name(handle, vm.v_base.u));

		cs_free(insn1, count1);
		cs_free(insn2, count2);
	}
	else
	{
		printf("not found vm baseaddress reg\n");

		cs_free(insn1, count1);
		cs_free(insn2, count2);
		return;
	}

	for (auto z = 0; z < ins_records[0]->size(); z++)
	{

		auto i = ins_records[0]->at(z);

		uc_mem_read(uc, i.address, &buffer, i.size);
		auto count = cs_disasm(handle, (const uint8_t *)i.buffer, i.size, i.address, 0, &insn1);

		if (insn1->id == X86_INS_LEA &&
			insn1->detail->x86.operands[0].reg == vm.v_base.u &&
			insn1->detail->x86.operands[1].mem.base == X86_REG_RIP && insn1->detail->x86.operands[1].mem.disp != 0)
		{
			printf("verify v_base success!\n");
		}

		if ((insn1->id == X86_INS_MOV) && insn1->detail->x86.operands[0].reg == X86_REG_RSP)
		{
			printf("0x%llx: %s\t%s\n", insn1->address, insn1->mnemonic, insn1->op_str);

			vm.v_context.u = reg_get_value_by_id(i.regs, insn1->detail->x86.operands[1].reg);

			printf("vm context reg = %p\n", vm.v_context.u);

			auto trace_vrsp = [](_INS_RECORD ins, void *user_data) -> bool
			{
				// 打印当前指令
				cs_insn *in;
				char buffer[0x10] = {0};
				uc_mem_read(uc, ins.address, buffer, ins.size);

				auto count = cs_disasm(handle, (const uint8_t *)ins.buffer, ins.size, ins.address, 0, &in);

				if (in->detail->x86.op_count == 2)
				{

					std::regex reg(R"(.*,.*\[.*rsp.*\])");
					// lea rax,[rsp+0x10]   匹配lea rax,[rsp]
					if (in->id == X86_INS_LEA)
					{

						if (std::regex_match(in->op_str, reg))
						{
							printf("0x%llx: %s\t%s\n", in->address, in->mnemonic, in->op_str);

					
							*(ULONG64 *)user_data = in->detail->x86.operands[0].reg;
			


							vrsp_address = ins.address;


							if(in->detail->x86.operands[1].mem.base == X86_REG_RSP)
							{


								vrsp_offset = in->detail->x86.operands[1].mem.disp +  reg_get_value_by_id(ins.regs,  in->detail->x86.operands[1].mem.index) * in->detail->x86.operands[1].mem.scale;
							}
							else
							{
								vrsp_offset = in->detail->x86.operands[1].mem.disp + reg_get_value_by_id(ins.regs, in->detail->x86.operands[1].mem.base);
							}


							return true;
						}
					}

					if ((in->id == X86_INS_MOV || in->id == X86_INS_ADD || in->id == X86_INS_ADC) && in->detail->x86.operands[0].type == X86_OP_REG)
					{
						reg.assign(R"(.*,.*rsp)");
						if (std::regex_match(in->op_str, reg))
						{

							printf("0x%llx: %s\t%s\n", in->address, in->mnemonic, in->op_str);
							*(LONG64 *)user_data = in->detail->x86.operands[0].reg;
							vrsp_address = ins.address;

							vrsp_offset = 0;

							return true;
						}
					}
				}
				cs_free(in, count);
				return false;
			};

			LONG64 reg_id = 0;
			trace(*ins_records[0], trace_vrsp, &reg_id, z, 0, true);
			vm.v_rsp.u = reg_id;
			printf("vrsp: %s \n", cs_reg_name(handle, reg_id));
		}

		cs_free(insn1, count);
	}

	auto vkey_trace = [](_INS_RECORD ins, void *user_data) -> bool
	{
		cs_insn *in;
		char buffer[0x10] = {0};
		uc_mem_read(uc, ins.address, buffer, ins.size);
		auto count = cs_disasm(handle, (const uint8_t *)buffer, ins.size, ins.address, 0, &in);

		if (in->id == X86_INS_POP && in->detail->x86.operands[0].type == CS_OP_REG)
		{
			printf("0x%llx: %s\t%s\n", in->address, in->mnemonic, in->op_str);
			*(LONG64 *)user_data = in->detail->x86.operands[0].reg;
			return true;
		}

		cs_free(in, count);
		return false;
	};

	LONG64 reg_id = 0;
	trace(*ins_records[0], vkey_trace, &reg_id, ins_records[0]->size() - 1, 0, true);
	vm.v_key.u = reg_id;
	printf("vm key reg = %s\n", cs_reg_name(handle, reg_id));

	auto vrip_trace = [](_INS_RECORD ins, void *user_data) -> bool
	{
		cs_insn *in;
		char buffer[0x10] = {0};
		uc_mem_read(uc, ins.address, buffer, ins.size);
		auto count = cs_disasm(handle, (const uint8_t *)ins.buffer, ins.size, ins.address, 0, &in);

		if (in->id == X86_INS_MOV)
		{
			if (in->detail->x86.operands[0].type == X86_OP_REG && in->detail->x86.operands[1].type == X86_OP_REG)
			{
				if (in->detail->x86.operands[0].reg == vm.v_key.u)
				{
					printf("0x%llx: %s\t%s\n", in->address, in->mnemonic, in->op_str);
					*(LONG64 *)user_data = in->detail->x86.operands[1].reg;
					return true;
				}
			}
		}

		cs_free(in, count);

		return false;
	};
	reg_id = 0;
	trace(*ins_records[0], vrip_trace, &reg_id, ins_records[0]->size() - 1, 0, true);
	vm.v_rip.u = reg_id;
	printf("vm rip reg = %s\n", cs_reg_name(handle, reg_id));
}

void parse_vcontext()
{

	auto ret = trace_titan(*ins_records[0], vrsp_address, X86_REG_RSP);

	// 去除重复项
	std::sort(ret.begin(), ret.end());
	ret.erase(std::unique(ret.begin(), ret.end()), ret.end());

	 //print_indexs(*ins_records[0], ret);

	for (auto i : ret)
	{

		cs_insn *insn;
		char buffer[0x10] = {0};

		uc_mem_read(uc, ins_records[0]->at(i).address, buffer, ins_records[0]->at(i).size);
		auto count = cs_disasm(handle, (const uint8_t *)buffer, ins_records[0]->at(i).size, ins_records[0]->at(i).address, 0, &insn);

		auto dt = insn->detail->x86;
		auto op0 = dt.operands[0];
		auto op1 = dt.operands[1];

		switch (insn->id)
		{
		case X86_INS_PUSH:
			if (op0.type == X86_OP_REG)
				vm.vrsp.push_back(op0.reg);
			else
				vm.vrsp.push_back(X86_REG_RIZ);
			break;
		case X86_INS_POP:
			vm.vrsp.pop_back();
			break;
		case X86_INS_CALL:
			vm.vrsp.push_back(X86_REG_RIZ);
			break;
		case X86_INS_PUSHFQ:
			vm.vrsp.push_back(X86_REG_EFLAGS);
			break;
		case X86_INS_POPFQ:
			vm.vrsp.pop_back();
			break;
		case X86_INS_LEA:
			if (op0.reg == X86_REG_RSP)
			{
				// 如果是小于0,就压入多少个X86_REG_RIZ,如果大于0，就pop多少个
				if (op1.mem.disp < 0)
				{
					for (auto i = 0; i < abs(op1.mem.disp) / 8; i++)
					{
						vm.vrsp.push_back(X86_REG_RIZ);
					}
				}
				else
				{
					for (auto i = 0; i < abs(op1.mem.disp) / 8; i++)
					{
						vm.vrsp.pop_back();
					}
				}
			}
			break;

		default:
			break;
		}

		cs_free(insn, count);
	}

	if (vrsp_offset != 0) {
		for (size_t i = 0; i < abs(vrsp_offset) / 8; i++)
		{
			vm.vrsp.push_back(X86_REG_RIZ);

		}
	}


	// 打印对应的寄存器名称
	for (auto i : vm.vrsp)
	{
		printf("%s ", cs_reg_name(handle, i));
	}
	printf("\n");
}

ULONG64 text_section = 0x140001000;
ULONG64 text_section_size = 0x1000;

bool beginef = false;
int cou = 0;
void hook_code(uc_engine *uc, uint64_t address, uint32_t size, REGS_PIN regs)
{

	if (current_basicblock == nullptr)
	{

		current_basicblock = new basicblock;
		ins_records.push_back(current_basicblock);
	}


	auto reg = regs;
	INS_RECORD ins_info;
	ins_info.address = address;
	ins_info.size = size;
	ins_info.ori_size = size;
	memcpy(&ins_info.regs, &reg.regs, sizeof(reg.regs));



	char buffer[0x10] = {0};
	uc_mem_read(uc, address, &buffer, size);

	ins_info.buffer = (char *)malloc(size);
	memcpy(ins_info.buffer, (char *)buffer, size);
	current_basicblock->push_back(ins_info);

	auto ret = cs_disasm(handle, (const uint8_t *)buffer, size, address, 0, &insn);
	if (ret < 0)
		printf("ERROR: Failed to disassemble given code!\n");



	if (X86_INS_JMP == insn->id || X86_INS_RET == insn->id)
	{
		if (X86_INS_JMP == insn->id)
		{
			if (insn->detail->x86.op_count == 1)
			{
				auto op = insn->detail->x86.operands[0];
				if (op.type == X86_OP_REG)
				{

					auto last_ins = current_basicblock->at(current_basicblock->size() - 2);

					uc_mem_read(uc, last_ins.address, &buffer, last_ins.size);

					cs_insn *insn_temp = nullptr;

					auto re = cs_disasm(handle, (const uint8_t *)buffer, last_ins.size, last_ins.address, 0, &insn_temp);

					if (insn_temp->id == X86_INS_XOR)
					{

						// printf("0x%llx: %s\t%s\n", insn_temp->address, insn_temp->mnemonic, insn_temp->op_str);
						printf("0x%llx: %s\t%s\n", insn->address, insn->mnemonic, insn->op_str);

						current_basicblock = new basicblock;
						ins_records.push_back(current_basicblock);
					}
					else
					{

						if ((insn_temp->id == X86_INS_ADD || insn_temp->id == X86_INS_ADC) && insn_temp->detail->x86.operands[1].type == X86_OP_IMM)
						{
						}
						else if (insn_temp->id == X86_INS_LEA && insn_temp->detail->x86.operands[0].reg == op.reg)
						{
						}
						else
						{

							printf("0x%llx: %s\t%s\n", insn->address, insn->mnemonic, insn->op_str);

							current_basicblock = new basicblock;
							ins_records.push_back(current_basicblock);
						}
					}

					cs_free(insn_temp, re);
				}
			}
		}
		else
		{

			if (current_basicblock->size() > 1)
			{
				auto last_ins = current_basicblock->at(current_basicblock->size() - 2);

				uc_mem_read(uc, last_ins.address, &buffer, last_ins.size);

				cs_insn *insn_temp = nullptr;

				auto re = cs_disasm(handle, (const uint8_t *)buffer, last_ins.size, last_ins.address, 0, &insn_temp);

				cs_free(insn_temp, re);

				// 打印当前指令和上一条指令
				printf("0x%llx: %s\t%s\n", insn->address, insn->mnemonic, insn->op_str);

				current_basicblock = new basicblock;
				ins_records.push_back(current_basicblock);
			}
		}
	}

	cs_free(insn, ret);
}

void clear_records()
{

	for (auto bb : ins_records)
	{
		for (auto ins : *bb)
		{
			free(ins.buffer);
		}
		delete bb;
	}
}

bool isAll = true;

void detect_handlers(int i)
{



	if (isAll)
	{

		for (size_t i = 1; i < ins_records.size(); i++)
		{

			if(ins_records[i]->size() > 0)
			{
				printf("basicblock index: %d startaddress = %llx  \n", i, ins_records[i]->at(0).address);

				auto isVPop = VPopReg64(*ins_records[i]);
			}

		}
	}
	else {



		if (ins_records[i]->size() > 0)
		{

			print_basicblock(*ins_records[i]);

			printf("basicblock index: %d startaddress = %llx  \n", i, ins_records[i]->at(0).address);

			auto isVPop = VPopReg64(*ins_records[i]);
		}

	}
}

HMODULE GetProcessModules(DWORD dwProcessId, wchar_t *module_name)
{
	HANDLE hSnapshot = CreateToolhelp32Snapshot(TH32CS_SNAPMODULE, dwProcessId);
	if (hSnapshot == INVALID_HANDLE_VALUE)
	{
		std::cerr << "CreateToolhelp32Snapshot failed: " << GetLastError() << std::endl;
		return FALSE;
	}

	HMODULE hModule = NULL;

	MODULEENTRY32 me32;
	me32.dwSize = sizeof(MODULEENTRY32);
	if (!Module32First(hSnapshot, &me32))
	{
		std::cerr << "Module32First failed: " << GetLastError() << std::endl;
		CloseHandle(hSnapshot);
		return hModule;
	}

	do
	{
		if (me32.th32ProcessID == dwProcessId)
		{

			if (wcscmp(me32.szModule, module_name) == 0)
			{
				std::wcout << "Module name: " << me32.szModule << std::endl;
				std::wcout << "Module path: " << me32.szExePath << std::endl;
				std::wcout << "Module address: " << me32.modBaseAddr << std::endl;
				std::wcout << "Module size: " << me32.modBaseSize << std::endl;
				hModule = me32.hModule;
				break;
			}
		}
	} while (Module32Next(hSnapshot, &me32));

	CloseHandle(hSnapshot);
	return hModule;
}

// 根据进程名获取进程PID
DWORD GetPidByProcessName(const wchar_t *processName)
{
	PROCESSENTRY32 pe32;
	pe32.dwSize = sizeof(PROCESSENTRY32);
	HANDLE hProcessSnap = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
	if (hProcessSnap == INVALID_HANDLE_VALUE)
	{
		return 0;
	}
	BOOL bMore = Process32First(hProcessSnap, &pe32);
	while (bMore)
	{
		if (wcscmp(pe32.szExeFile, processName) == 0)
		{
			return pe32.th32ProcessID;
		}
		bMore = Process32Next(hProcessSnap, &pe32);
	}
	return 0;
}

char* vectorToCharArray(const std::vector<uint8_t>& vec) {
	// 创建 char 数组，大小为 vec.size() + 1（用于 null 终止符）
	char* charArray = new char[vec.size() + 1];

	memset(charArray, 0, vec.size() + 1);

	// 将 vector 的内容复制到 char 数组
	std::memcpy(charArray, vec.data(), vec.size());

	// 添加 null 终止符
	charArray[vec.size()] = '\0';

	return charArray; // 返回指针
}





// 读取函数
void loadRegsArray(std::vector<REGS_PIN>& regsArray, const std::string& filename) {

	std::ifstream inFile(filename, std::ios::binary);
	if (!inFile) {
		std::cerr << "Error opening file for reading: " << filename << std::endl;
		return;
	}

	size_t count;
	inFile.read(reinterpret_cast<char*>(&count), sizeof(count)); // 读取数组大小
	regsArray.resize(count); // 调整数组大小
	inFile.read(reinterpret_cast<char*>(&regsArray[0]), count * sizeof(REGS_PIN)); // 读取数组内容

	inFile.close();

}

int main1()
{




	int64_t pid = GetPidByProcessName(L"demox64.vmp.exe");

	// 打印
	printf("pid = %d\n", pid);

	if (pid == 0)
	{
		printf("GetPidByProcessName failed\n");
		return -1;
	}
	// 打开进程
	HANDLE hProcess = OpenProcess(PROCESS_ALL_ACCESS, FALSE, pid);
	if (hProcess == NULL)
	{
		printf("OpenProcess failed\n");
		return -1;
	}

	// 获取进程的基址
	DWORD64 dwBaseAddr = 0;
	// 获取指定进程的模块句柄

	HMODULE hModule = GetProcessModules(pid, (wchar_t *)L"demox64.vmp.exe");

	// 打印模块句柄
	printf("hModule = %p\n", hModule);

	if (hModule == NULL)
	{
		printf("GetModuleHandle failed\n");
		return -1;
	}

	auto ret = uc_open(UC_ARCH_X86, UC_MODE_64, &uc);
	if (ret != UC_ERR_OK)
	{
		std::cout << uc_strerror(ret) << std::endl;
		exit(1);
	}

	ctx.setArchitecture(ARCH_X86_64);
	ctx.setAstRepresentationMode(triton::ast::representations::mode_e::PCODE_REPRESENTATION);

	// 解析另一个进程PE的区段,内存访问要用readprocessmemory
	IMAGE_DOS_HEADER dosHeader;
	ReadProcessMemory(hProcess, (LPCVOID)hModule, &dosHeader, sizeof(IMAGE_DOS_HEADER), NULL);

	IMAGE_NT_HEADERS ntHeader;
	ReadProcessMemory(hProcess, (LPCVOID)((ULONG64)hModule + dosHeader.e_lfanew), &ntHeader, sizeof(IMAGE_NT_HEADERS), NULL);

	IMAGE_SECTION_HEADER secHeader;
	ReadProcessMemory(hProcess, (LPCVOID)((ULONG64)hModule + dosHeader.e_lfanew + sizeof(IMAGE_NT_HEADERS)), &secHeader, sizeof(IMAGE_SECTION_HEADER), NULL);

	// 读取区段数据
	for (int i = 0; i < ntHeader.FileHeader.NumberOfSections; i++)
	{
		IMAGE_SECTION_HEADER sec;
		ReadProcessMemory(hProcess, (LPCVOID)((ULONG64)hModule + dosHeader.e_lfanew + sizeof(IMAGE_NT_HEADERS) + sizeof(IMAGE_SECTION_HEADER) * i), &sec, sizeof(IMAGE_SECTION_HEADER), NULL);

		SEG_MAP seg;
		seg.base = sec.VirtualAddress + (ULONG64)hModule;
		seg.size = sec.SizeOfRawData % 0x1000 == 0 ? sec.SizeOfRawData : (sec.SizeOfRawData + 0x1000) & ~0xfff;
		seg.buf = (unsigned char *)malloc(seg.size);

		// 如果是text段
		if (strcmp((char *)sec.Name, ".text") == 0)
		{
			text_section = seg.base;
			text_section_size = seg.size;
		}

		ReadProcessMemory(hProcess, (LPCVOID)(seg.base), seg.buf, seg.size, NULL);

		// map memory for this emulation
		err = uc_mem_map(uc, seg.base, seg.size, UC_PROT_ALL);
		if (err != UC_ERR_OK)
		{
			printf("Failed on uc_mem_map() with error returned: %u\n", err);
			return -1;
		}

		// write machine code to be emulated to memory
		err = uc_mem_write(uc, seg.base, seg.buf, seg.size);


		ctx.setConcreteMemoryAreaValue(seg.base, seg.buf, seg.size);


		// 打印seg信息
		printf("base = %llx size = %llx buffer = %llx\n", seg.base, seg.size, seg.buf);

		if (err != UC_ERR_OK)
		{
			printf("Failed on uc_mem_write() with error returned: %u\n", err);
			return -1;
		}

		free(seg.buf);
	}

	SEG_MAP seg;
	seg.base = 0x14a000;
	seg.size = 0x6000;
	seg.buf = (unsigned char *)malloc(seg.size);

	ReadProcessMemory(hProcess, (LPCVOID)0x14a000, seg.buf, seg.size, NULL);

	// map memory for this emulation
	err = uc_mem_map(uc, seg.base, seg.size, UC_PROT_ALL);
	if (err != UC_ERR_OK)
	{

		printf("Failed on uc_mem_map() with error returned: %u\n", err);
		return -1;
	}

	// write machine code to be emulated to memory

	err = uc_mem_write(uc, seg.base, seg.buf, seg.size);

	ctx.setConcreteMemoryAreaValue(0x14a000, seg.buf, seg.size);

	if (err != UC_ERR_OK)
	{
		printf("Failed on uc_mem_write() with error returned: %u\n", err);
		return -1;
	}

	free(seg.buf);

	if (cs_open(CS_ARCH_X86, CS_MODE_64, &handle))
	{
		printf("ERROR: Failed to initialize engine!\n");
		return -1;
	}

	cs_option(handle, CS_OPT_DETAIL, CS_OPT_ON);

	if (ks_open(KS_ARCH_X86, KS_MODE_64, &ks))
	{

		printf("ERROR: Failed to initialize engine!\n");
		return -1;
	}



	// 遍历线程
	HANDLE hThreadSnap = CreateToolhelp32Snapshot(TH32CS_SNAPTHREAD, pid);
	if (hThreadSnap == INVALID_HANDLE_VALUE)
	{
		printf("CreateToolhelp32Snapshot failed\n");
		return -1;
	}

	THREADENTRY32 te32;
	te32.dwSize = sizeof(THREADENTRY32);
	if (!Thread32First(hThreadSnap, &te32))
	{
		printf("Thread32First failed\n");
		return -1;
	}

	HANDLE hThread = NULL;

	do
	{
		if (te32.th32OwnerProcessID == pid)
		{
			// 打印线程ID
			printf("thread id = %d\n", te32.th32ThreadID);

			hThread = OpenThread(THREAD_ALL_ACCESS, FALSE, te32.th32ThreadID);
			if (hThread == NULL)
			{

				printf("OpenThread failed\n");
				return -1;
			}
			break;
		}
	} while (Thread32Next(hThreadSnap, &te32));

	// 获取主线程的上下文
	CONTEXT ctx1;
	ctx1.ContextFlags = CONTEXT_FULL;
	GetThreadContext(hThread, &ctx1);

	printf("rip = %llx\n", ctx1.Rip);

	// 设置寄存器
	uc_reg_write(uc, UC_X86_REG_RAX, &ctx1.Rax);
	uc_reg_write(uc, UC_X86_REG_RBX, &ctx1.Rbx);
	uc_reg_write(uc, UC_X86_REG_RCX, &ctx1.Rcx);
	uc_reg_write(uc, UC_X86_REG_RDX, &ctx1.Rdx);
	uc_reg_write(uc, UC_X86_REG_RSI, &ctx1.Rsi);
	uc_reg_write(uc, UC_X86_REG_RDI, &ctx1.Rdi);
	uc_reg_write(uc, UC_X86_REG_RSP, &ctx1.Rsp);
	uc_reg_write(uc, UC_X86_REG_RBP, &ctx1.Rbp);
	uc_reg_write(uc, UC_X86_REG_R8, &ctx1.R8);
	uc_reg_write(uc, UC_X86_REG_R9, &ctx1.R9);
	uc_reg_write(uc, UC_X86_REG_R10, &ctx1.R10);
	uc_reg_write(uc, UC_X86_REG_R11, &ctx1.R11);
	uc_reg_write(uc, UC_X86_REG_R12, &ctx1.R12);
	uc_reg_write(uc, UC_X86_REG_R13, &ctx1.R13);
	uc_reg_write(uc, UC_X86_REG_R14, &ctx1.R14);
	uc_reg_write(uc, UC_X86_REG_R15, &ctx1.R15);
	uc_reg_write(uc, UC_X86_REG_RIP, &ctx1.Rip);
	LONG64 flags = 0x204;
	uc_reg_write(uc, UC_X86_REG_EFLAGS, &flags);


	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_RAX), ctx1.Rax);	
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_RBX), ctx1.Rbx);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_RCX), ctx1.Rcx);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_RDX), ctx1.Rdx);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_RSI), ctx1.Rsi);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_RDI), ctx1.Rdi);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_RSP), ctx1.Rsp);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_RBP), ctx1.Rbp);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_R8), ctx1.R8);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_R9), ctx1.R9);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_R10), ctx1.R10);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_R11), ctx1.R11);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_R12), ctx1.R12);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_R13), ctx1.R13);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_R14), ctx1.R14);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_R15), ctx1.R15);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_RIP), ctx1.Rip);
	ctx.setConcreteRegisterValue(ctx.getRegister(ID_REG_X86_EFLAGS), flags);


	auto  pc = ctx.getConcreteRegisterValue(ctx.getRegister(ID_REG_X86_RIP));

	

	//do {


	//	if ((uint64)pc == 0x14019fb1e) {
	//	
	//		printf("rip = %llx\n", (uint64)pc);

	//		beginef = true;
	//	}


	//	if (beginef) {

	//		if ((uint64)pc == 0x1402522e6)
	//		{

	//			cou++;

	//			auto vrbp = ctx.getConcreteRegisterValue(ctx.getRegister(ID_REG_X86_RBP));

	//			printf("rbp = %llx\n", (uint64)vrbp);


	//		}

	//		if (cou > 8) {
	//			beginef = false;
	//		}


	//	}


	//	auto opcode = ctx.getConcreteMemoryAreaValue((uint64)pc, 16);


	//	auto ops = vectorToCharArray(opcode);
	//	
	//	auto ins =  Instruction(ops, 16);

	//	ctx.disassembly(ins);



	//	if ((uint64)pc == 0x14019fb1e)
	//	{
	//		std::cout << ins.getDisassembly() << std::endl;




	//	}
	//	ctx.processing(ins);

	//	pc = ctx.getConcreteRegisterValue(ctx.getRegister(ID_REG_X86_RIP));


	//	delete ops;

	//} while (1);
		


	// 从文件读取
	std::vector<REGS_PIN> loadedRegsArray;

	loadRegsArray(loadedRegsArray, "regsArray.bin");

	std::cout << "ins address " <<std::hex<< loadedRegsArray[loadedRegsArray.size()-1].address << std::dec << std::endl;



	// 打印读取的数据
	for (const auto& reg : loadedRegsArray) {

		if (reg.address == 0x140001060) {

			std::cout << std::hex << reg.address << " size = " << reg.size<< " rax: " << reg.regs.rax << ", rbx: " << reg.regs.rbx << std::dec << std::endl;

		}

		hook_code(uc, reg.address, reg.size, reg);


	}



	//ret = uc_emu_start(uc, 0x140001074, 0x140001010, 0, 0);

	//ret = uc_emu_start(uc, 0x140001130, 0x140001060, 0, 0);

	//ret = uc_emu_start(uc, 0x140001130, 0x140230a4e, 0, 0);


	// uc_hook_add(uc, &hookh, UC_HOOK_CODE, (void *)hook_code, 0, 1, 0);

	//ret = uc_emu_start(uc, 0x1402710e2, 0x00007FFB43A94F10, 0, 0);

	//ret = uc_emu_start(uc, 0x140001074, 0x140001010, 0, 0);

	// ret = uc_emu_start(uc, 0x140001130, 0x140001060, 0, 0);
	//ret = uc_emu_start(uc, 0x140001130, 0x140230a4e, 0, 0);

	

	// if (ret != UC_ERR_OK)
	// {

	// 	std::cout << uc_strerror(ret) << std::endl;
	// 	exit(1);
	// }


	//records temp;

	//去除重复项
	//for (auto &bb : ins_records)
	//{
	//	int i = 0;

	//	if (bb->size() > 0) {

	//		for (; i < temp.size(); i++)
	//		{
	//			if (temp[i]->at(0).address == bb->at(0).address)
	//			{
	//				break;
	//			}
	//		}

	//		if (i == temp.size())
	//		{
	//			temp.push_back(bb);
	//		}

	//	}
	//	else {
	//		continue;
	//	}

	//	
	//}

	//std::cout << "temp size = " << temp.size() << std::endl;
	





	printf("====================================\n");

	printf("basicblock size = %d\n", ins_records.size());

	// auto b = create_basicblock(*ins_records[0]);

	// std::cout<<b<<std::endl;

	printf("====================================\n");

	printf("basicblock index : %d startaddress = %llx\n", 0, ins_records[0]->at(0).address);
	
	
	find_vm_entry();

	printf("====================================\n");

	//parse_vcontext();

	
	test(*ins_records[0]);

	


	//isAll = false;

	//detect_handlers(1);

	clear_records();

	uc_close(uc);
	return 0;
}