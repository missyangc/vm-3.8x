#ifndef _EMU_H
#define _EMU_H

#include "fstream"
#include <capstone/capstone.h>
#include <unicorn/unicorn.h>
#include <triton/basicBlock.hpp>
#include <triton/aarch64Cpu.hpp>
#include <triton/aarch64Specifications.hpp>
#include <triton/context.hpp>
#include <triton/bitsVector.hpp>
#include <triton/config.hpp>
#include <triton/exceptions.hpp>
#include <triton/immediate.hpp>
#include <triton/instruction.hpp>
#include <triton/memoryAccess.hpp>
#include <triton/operandWrapper.hpp>
#include <triton/register.hpp>
#include <triton/x8664Cpu.hpp>
#include <triton/x86Cpu.hpp>
#include <triton/x86Specifications.hpp>
#include <keystone/keystone.h>
#include <vector>
#include "regex"
#include "algorithm"

using namespace triton;
using namespace triton::arch;




typedef struct _REGS_PIN
{
	uint64 address;
	int size;

	union
	{
		struct
		{
			UINT64 rax;
			UINT64 rbx;
			UINT64 rcx;
			UINT64 rdx;
			UINT64 rsi;
			UINT64 rdi;
			UINT64 rsp;
			UINT64 rbp;
			UINT64 r8;
			UINT64 r9;
			UINT64 r10;
			UINT64 r11;
			UINT64 r12;
			UINT64 r13;
			UINT64 r14;
			UINT64 r15;
			UINT64 rflags;

		} regs;
		UINT64 u[17];
	};
} REGS_PIN;



// memory address of the code section
typedef struct _SEG_MAP
{
	LONG64 base;
	unsigned int size;
	char *file_name;
	unsigned char *buf; // contain the file buf
} SEG_MAP;

typedef struct _REG
{
	union
	{
		union
		{
			char b;
			short w;
			DWORD d;
			LONG64 q;
		};
		LONG64 u;
	};
} REG;

typedef struct _REGS
{
	union
	{
		struct
		{
			REG rax;
			REG rbx;
			REG rcx;
			REG rdx;
			REG rsi;
			REG rdi;
			REG rsp;
			REG rbp;
			REG r8;
			REG r9;
			REG r10;
			REG r11;
			REG r12;
			REG r13;
			REG r14;
			REG r15;
			REG rflags;

		} regs;
		REG u[17];
	};
} REGS;

typedef struct _INS_RECORD
{
	LONG64 address;
	unsigned int size;
	unsigned int ori_size;
	REGS regs;
	char *buffer;

} INS_RECORD;

typedef enum _BASIC_OPERATION_TYPE
{
	R_STACK,
	C_VSP,
	W_STACK_FROM_REG_VIP,
	W_STACK_FROM_IMM_VIP,
	W_STACK_FROM_ADC_STACK_STACK,
	W_STACK_FROM_LEA_STACK,
	W_STACK_FROM_REG_IMM,
	W_STACK_FROM_ADD_REG_STACK,

	W_STACK_FROM_UNKNOW,
	R_REG_VIP,
	W_REG_VIP_FROM_REG,
	W_REG_IMM_FROM_REG,
	W_REG_VIP_FROM_ADD_REG_STACK,
	W_REG_IMM_FROM_ADD_REG_STACK,
	W_REG_VIP_FROM_STACK,
	W_REG_IMM_FROM_STACK,
	R_STREAM,
	R_STREAM_UNUSED,
	C_VIP,
	VRET,
	R_VREG_OFFSET,
	R_VREG_OFFSET_IMM,
	R_VREG_OFFSET_VIP,
	R_VREG,
	R_VREG_IMM,
	R_VREG_VIP,
	W_VREG,
	W_VREG_IMM,
	W_VREG_VIP,
	W_VBASE


} BASIC_OPERATION_TYPE;

typedef struct _BASIC_OPERATION
{
	BASIC_OPERATION_TYPE type;
	ULONG64 address;
	union
	{

		struct
		{
			int offset;
			int save_reg_id;
		} read_vsp;

		struct
		{
			int step;
		} change_vsp;

		struct
		{
			int size;
			int offset;

		} read_vip;
		struct
		{

			int reg_index;
			int offset;
			ULONG64 value;

		} write_reg_from_stack_by_vip;
		struct
		{
			int reg_index;
			int offset;
			ULONG64 value;

		} write_reg_from_stack_by_imm;
		struct {
			int reg_index;
			int offset;
			ULONG64 value; 
		}write_stack;
		struct
		{
			int reg_index;
			int offset;
			ULONG64 value;

		} write_stack_from_reg_by_vip;
		struct
		{
			LONG64 value;
			int offset;
		} write_stack_from_imm_by_vip;
		struct
		{
			int reg_index;
			int offset;
			ULONG64 value;

		} write_stack_from_reg_by_imm;
		struct
		{
			ULONG64 value1_offset;
			ULONG64 value2_offset;
			int offset;
			ULONG64 value;

		} write_stack_adc_stack_stack;
		struct
		{
			ULONG64 value_offset;
			int offset;
			ULONG64 value;
		} write_stack_lea_stack;
		struct
		{

			int step;

		} change_vip;
		struct
		{
			ULONG64 ret_address;
		} vret;

		struct
		{
			int reg_id;
			ULONG64 value;
		} read_reg_by_vip;

		struct
		{
			int reg_id;
			ULONG64 value;
		} write_reg_from_reg_by_vip;

		struct
		{
			int reg_id;
			ULONG64 value;
		} write_reg;

		struct
		{
			int reg_id;
			ULONG64 value;
		} read_reg;

		struct
		{
			int reg_id;
		} read_reg_offset;
	};

} BASIC_OPERATION;

typedef struct _VM
{

	REG v_rip;
	REG v_rsp;
	REG v_base;
	REG v_key;
	REG v_context;
	std::vector<x86_reg> vrsp;
	ULONG64 vcontext[100];
	bool isEnterFinish = false;
} VM;

REGS regs = {0};
uc_struct *uc;
uc_err err;
csh handle;
cs_insn *insn;
uc_hook hookh;
ks_engine *ks;
triton::Context ctx;

using basicblock = std::vector<_INS_RECORD>;

using records = std::vector<basicblock *>;

using trace_callback = bool (*)(_INS_RECORD, void *);

basicblock *current_basicblock = nullptr;
records ins_records;

VM vm = {0};

#define HIGH(value) (value & 0xFFFFFFFF00000000) >> 32
#define LOW(value) (value & 0xFFFFFFFF)

struct asd
{
	LONG64 a;
	const char *buffer;
};

asd function[] = {
	{
		0x40056d,
		"\x55",
	}, //   push    rbp
	{
		0x40056e,
		"\x48\x89\xe5",
	}, //   mov     rbp,rsp
	{
		0x400571,
		"\x48\x89\x7d\xe8",
	}, //   mov     QWORD PTR [rbp-0x18],rdi
	{
		0x400575,
		"\xc7\x45\xfc\x00\x00\x00\x00",
	}, //   mov     DWORD PTR [rbp-0x4],0x0
	//{0x40057c, "\xeb\x3f",                     } , //   jmp     4005bd <check+0x50>
	{
		0x40057e,
		"\x8b\x45\xfc",
	}, //   mov     eax,DWORD PTR [rbp-0x4]
	{
		0x400581,
		"\x48\x63\xd0",
	}, //   movsxd  rdx,eax
	{
		0x400584,
		"\x48\x8b\x45\xe8",
	}, //   mov     rax,QWORD PTR [rbp-0x18]
	{
		0x400588,
		"\x48\x01\xd0",
	}, //   add     rax,rdx
	{
		0x40058b,
		"\x0f\xb6\x00",
	}, //   movzx   eax,BYTE PTR [rax]
	{
		0x40058e,
		"\x0f\xbe\xc0",
	}, //   movsx   eax,al
	{
		0x400591,
		"\x83\xe8\x01",
	}, //   sub     eax,0x1
	{
		0x400594,
		"\x83\xf0\x55",
	}, //   xor     eax,0x55
	{
		0x400597,
		"\x89\xc1",
	}, //   mov     ecx,eax
	{
		0x400599,
		"\x48\x8b\x15\xa0\x0a\x20\x00",
	}, //   mov     rdx,QWORD PTR [rip+0x200aa0]        # 601040 <serial>
	{
		0x4005a0,
		"\x8b\x45\xfc",
	}, //   mov     eax,DWORD PTR [rbp-0x4]
	{
		0x4005a3,
		"\x48\x98",
	}, //   cdqe
	{
		0x4005a5,
		"\x48\x01\xd0",
	}, //   add     rax,rdx
	{
		0x4005a8,
		"\x0f\xb6\x00",
	}, //   movzx   eax,BYTE PTR [rax]
	{
		0x4005ab,
		"\x0f\xbe\xc0",
	}, //   movsx   eax,al
	{
		0x4005ae,
		"\x39\xc1",
	}, //   cmp     ecx,eax
	{
		0x4005b0,
		"\x74\x07",
	}, //   je      4005b9 <check+0x4c>
	{
		0x4005b2,
		"\xb8\x01\x00\x00\x00",
	}, //   mov     eax,0x1
	{
		0x4005b7,
		"\xeb\x0f",
	}, //   jmp     4005c8 <check+0x5b>
	{
		0x4005b9,
		"\x83\x45\xfc\x01",
	}, //   add     DWORD PTR [rbp-0x4],0x1
	{
		0x4005bd,
		"\x83\x7d\xfc\x04",
	}, //   cmp     DWORD PTR [rbp-0x4],0x4
	{
		0x4005c1,
		"\x7e\xbb",
	}, //   jle     40057e <check+0x11>
	{
		0x4005c3,
		"\xb8\x00\x00\x00\x00",
	}, //   mov     eax,0x0
	{
		0x4005c8,
		"\x5d",
	}, //   pop     rbp
	{
		0x4005c9,
		"\xc3",
	} //   ret
};

void read_regs()
{
	uc_reg_read(uc, UC_X86_REG_RAX, &regs.regs.rax.u);
	uc_reg_read(uc, UC_X86_REG_RBX, &regs.regs.rbx.u);
	uc_reg_read(uc, UC_X86_REG_RCX, &regs.regs.rcx.u);
	uc_reg_read(uc, UC_X86_REG_RDX, &regs.regs.rdx.u);
	uc_reg_read(uc, UC_X86_REG_RSI, &regs.regs.rsi.u);
	uc_reg_read(uc, UC_X86_REG_RDI, &regs.regs.rdi.u);
	uc_reg_read(uc, UC_X86_REG_RSP, &regs.regs.rsp.u);
	uc_reg_read(uc, UC_X86_REG_RBP, &regs.regs.rbp.u);
	uc_reg_read(uc, UC_X86_REG_R8, &regs.regs.r8.u);
	uc_reg_read(uc, UC_X86_REG_R9, &regs.regs.r9.u);
	uc_reg_read(uc, UC_X86_REG_R10, &regs.regs.r10.u);
	uc_reg_read(uc, UC_X86_REG_R11, &regs.regs.r11.u);
	uc_reg_read(uc, UC_X86_REG_R12, &regs.regs.r12.u);
	uc_reg_read(uc, UC_X86_REG_R13, &regs.regs.r13.u);
	uc_reg_read(uc, UC_X86_REG_R14, &regs.regs.r14.u);
	uc_reg_read(uc, UC_X86_REG_R15, &regs.regs.r15.u);
	uc_reg_read(uc, UC_X86_REG_RFLAGS, &regs.regs.rflags.u);
}

void write_regs()
{
	uc_reg_write(uc, UC_X86_REG_RAX, &regs.regs.rax.u);
	uc_reg_write(uc, UC_X86_REG_RBX, &regs.regs.rbx.u);
	uc_reg_write(uc, UC_X86_REG_RCX, &regs.regs.rcx.u);
	uc_reg_write(uc, UC_X86_REG_RDX, &regs.regs.rdx.u);
	uc_reg_write(uc, UC_X86_REG_RSI, &regs.regs.rsi.u);
	uc_reg_write(uc, UC_X86_REG_RDI, &regs.regs.rdi.u);
	uc_reg_write(uc, UC_X86_REG_RSP, &regs.regs.rsp.u);
	uc_reg_write(uc, UC_X86_REG_RBP, &regs.regs.rbp.u);
	uc_reg_write(uc, UC_X86_REG_R8, &regs.regs.r8.u);
	uc_reg_write(uc, UC_X86_REG_R9, &regs.regs.r9.u);
	uc_reg_write(uc, UC_X86_REG_R10, &regs.regs.r10.u);
	uc_reg_write(uc, UC_X86_REG_R11, &regs.regs.r11.u);
	uc_reg_write(uc, UC_X86_REG_R12, &regs.regs.r12.u);
	uc_reg_write(uc, UC_X86_REG_R13, &regs.regs.r13.u);
	uc_reg_write(uc, UC_X86_REG_R14, &regs.regs.r14.u);
	uc_reg_write(uc, UC_X86_REG_R15, &regs.regs.r15.u);
	uc_reg_write(uc, UC_X86_REG_RFLAGS, &regs.regs.rflags.u);
}

void print_regs()
{

	printf("RAX: 0x%llx\n", regs.regs.rax.u);
	printf("RBX: 0x%llx\n", regs.regs.rbx.u);
	printf("RCX: 0x%llx\n", regs.regs.rcx.u);
	printf("RDX: 0x%llx\n", regs.regs.rdx.u);
	printf("RSI: 0x%llx\n", regs.regs.rsi.u);
	printf("RDI: 0x%llx\n", regs.regs.rdi.u);
	printf("RSP: 0x%llx\n", regs.regs.rsp.u);
	printf("RBP: 0x%llx\n", regs.regs.rbp.u);
	printf("R8: 0x%llx\n", regs.regs.r8.u);
	printf("R9: 0x%llx\n", regs.regs.r9.u);
	printf("R10: 0x%llx\n", regs.regs.r10.u);
	printf("R11: 0x%llx\n", regs.regs.r11.u);
	printf("R12: 0x%llx\n", regs.regs.r12.u);
	printf("R13: 0x%llx\n", regs.regs.r13.u);
	printf("R14: 0x%llx\n", regs.regs.r14.u);
	printf("R15: 0x%llx\n", regs.regs.r15.u);
	printf("RFLAGS: 0x%llx\n", regs.regs.rflags.u);
}

void init_regs()
{

	regs.regs.rax.u = 0x00007FFE4BB507A8;
	regs.regs.rbx.u = 0x00000000005F6C40;
	regs.regs.rcx.u = 0x0000000000000001;
	regs.regs.rdx.u = 0x00000000005F6C40;
	regs.regs.rsi.u = 0x0000000000000000;
	regs.regs.rdi.u = 0x00000000005FAD80;
	regs.regs.rsp.u = 0x000000000014FEC0;
	regs.regs.rbp.u = 0x0000000000000000;
	regs.regs.r8.u = 0x00000000005FAD80;
	regs.regs.r9.u = 0x000000000014FE68;
	regs.regs.r10.u = 0x0000000000000012;
	regs.regs.r11.u = 0x000000000014FE80;
	regs.regs.r12.u = 0;
	regs.regs.r13.u = 0;
	regs.regs.r14.u = 0;
	regs.regs.r15.u = 0;
	regs.regs.rflags.u = 0x0000000000000206;
}

x86_reg reg_extend(x86_reg reg_id)
{

	if (reg_id == X86_REG_AL || reg_id == X86_REG_AH || reg_id == X86_REG_AX || reg_id == X86_REG_EAX || reg_id == X86_REG_RAX)
		return X86_REG_RAX;
	if (reg_id == X86_REG_BL || reg_id == X86_REG_BH || reg_id == X86_REG_BX || reg_id == X86_REG_EBX || reg_id == X86_REG_RBX)
		return X86_REG_RBX;

	if (reg_id == X86_REG_CL || reg_id == X86_REG_CH || reg_id == X86_REG_CX || reg_id == X86_REG_ECX || reg_id == X86_REG_RCX)
		return X86_REG_RCX;

	if (reg_id == X86_REG_DL || reg_id == X86_REG_DH || reg_id == X86_REG_DX || reg_id == X86_REG_EDX || reg_id == X86_REG_RDX)
		return X86_REG_RDX;

	if (reg_id == X86_REG_R8B || reg_id == X86_REG_R8W || reg_id == X86_REG_R8D || reg_id == X86_REG_R8)
		return X86_REG_R8;

	if (reg_id == X86_REG_R9B || reg_id == X86_REG_R9W || reg_id == X86_REG_R9D || reg_id == X86_REG_R9)
		return X86_REG_R9;

	if (reg_id == X86_REG_R10B || reg_id == X86_REG_R10W || reg_id == X86_REG_R10D || reg_id == X86_REG_R10)
		return X86_REG_R10;

	if (reg_id == X86_REG_R11B || reg_id == X86_REG_R11W || reg_id == X86_REG_R11D || reg_id == X86_REG_R11)
		return X86_REG_R11;

	if (reg_id == X86_REG_R12B || reg_id == X86_REG_R12W || reg_id == X86_REG_R12D || reg_id == X86_REG_R12)
		return X86_REG_R12;

	if (reg_id == X86_REG_R13B || reg_id == X86_REG_R13W || reg_id == X86_REG_R13D || reg_id == X86_REG_R13)
		return X86_REG_R13;

	if (reg_id == X86_REG_R14B || reg_id == X86_REG_R14W || reg_id == X86_REG_R14D || reg_id == X86_REG_R14)
		return X86_REG_R14;

	if (reg_id == X86_REG_R15B || reg_id == X86_REG_R15W || reg_id == X86_REG_R15D || reg_id == X86_REG_R15)
		return X86_REG_R15;

	return reg_id;
}

LONG64 reg_get_value_by_id(REGS regs, x86_reg id)
{
	if (reg_extend(id) == X86_REG_RAX)
		return regs.regs.rax.u;
	if (reg_extend(id) == X86_REG_RBX)
		return regs.regs.rbx.u;
	if (reg_extend(id) == X86_REG_RCX)
		return regs.regs.rcx.u;
	if (reg_extend(id) == X86_REG_RDX)
		return regs.regs.rdx.u;
	if (reg_extend(id) == X86_REG_RSI)
		return regs.regs.rsi.u;
	if (reg_extend(id) == X86_REG_RDI)
		return regs.regs.rdi.u;
	if (reg_extend(id) == X86_REG_RSP)
		return regs.regs.rsp.u;
	if (reg_extend(id) == X86_REG_RBP)
		return regs.regs.rbp.u;
	if (reg_extend(id) == X86_REG_R8)
		return regs.regs.r8.u;
	if (reg_extend(id) == X86_REG_R9)
		return regs.regs.r9.u;
	if (reg_extend(id) == X86_REG_R10)
		return regs.regs.r10.u;
	if (reg_extend(id) == X86_REG_R11)
		return regs.regs.r11.u;
	if (reg_extend(id) == X86_REG_R12)
		return regs.regs.r12.u;
	if (reg_extend(id) == X86_REG_R13)
		return regs.regs.r13.u;
	if (reg_extend(id) == X86_REG_R14)
		return regs.regs.r14.u;
	if (reg_extend(id) == X86_REG_R15)
		return regs.regs.r15.u;
	if (reg_extend(id) == X86_REG_RIZ || reg_extend(id) == X86_REG_INVALID)
		return 0;
}

bool is = false;

bool deal_constant(basicblock bb, BasicBlock &b, int i, triton::Context &ctx);
void update_ins(basicblock &bb, int index, char *buffer, int size);
void print_indexs(basicblock bb, std::vector<ULONG64> indexs);
bool is_from_constant(basicblock bb, int index, triton::Context &ctx)
{

	char buffer[0x10] = {0};

	do
	{

		auto reg_name = cs_reg_name(handle, index);

		if (!_stricmp(reg_name, "riz"))
			break;

		auto rc = ctx.getRegister(reg_name);
		auto regExp = ctx.getSymbolicRegister(rc);
		if (regExp == NULL)
			return false;
		auto sliceExp = ctx.sliceExpressions(regExp);

		std::vector<ULONG64> sliceExpVec;
		for (auto in : sliceExp)
		{
			sliceExpVec.push_back(atoll(in.second->getComment().c_str()));
		}

		std::sort(sliceExpVec.begin(), sliceExpVec.end());

		// 字符串转为数字

		cs_insn *insn_reverse = nullptr;
		auto inde = sliceExpVec[0];

		uc_mem_read(uc, bb[inde].address, buffer, bb[inde].ori_size);
		auto cou = cs_disasm(handle, (const uint8 *)buffer, bb[inde].ori_size, bb[inde].address, 0, &insn_reverse);

		if (insn_reverse->detail->x86.operands[1].type == X86_OP_IMM)
		{

			cs_free(insn_reverse, cou);

			/*for (auto in : sliceExpVec)
			{

				cs_insn* insn_reverse = nullptr;
				auto inde = in;

				uc_mem_read(uc, bb[inde].address, buffer, bb[inde].size);
				auto cou = cs_disasm(handle, (const uint8*)buffer, bb[inde].ori_size, bb[inde].address, 0, &insn_reverse);

				printf("index = %d %llx %s %s\n", in, bb[inde].address, cs_insn_name(handle, insn_reverse->id), insn_reverse->op_str);

				cs_free(insn_reverse, cou);
			}*/

			return true;
		}

		// 打印指令

		cs_free(insn_reverse, cou);

	} while (0);

	return false;
}

bool is_from_constant(basicblock bb, uint64 address, int reg_id)
{

	BasicBlock b;
	cs_insn *insn;
	triton::Context ctx;
	ctx.setArchitecture(triton::arch::ARCH_X86_64);
	ctx.reset();

	char buffer[0x10] = {0};

	for (size_t i = 0; i < bb.size(); i++)
	{

		uc_mem_read(uc, bb[i].address, buffer, bb[i].size);

		auto count = cs_disasm(handle, (const uint8 *)buffer, bb[i].ori_size, bb[i].address, 0, &insn);

		auto dt = insn->detail->x86;

		auto ins = Instruction(bb[i].address, buffer, bb[i].ori_size);

		ctx.disassembly(ins);

		if (ins.isControlFlow())
		{

			if (insn->id == X86_INS_CALL)
			{

				char buf[] = {"\x48\x8d\x64\x24\xf8"};

				ins = Instruction(bb[i].address, buf, bb[i].size);

				ctx.disassembly(ins);

				ctx.processing(ins);

				b.add(ins);
			}

			cs_free(insn, count);

			continue;
		}

		if (bb[i].address == address)
			if (is_from_constant(bb, reg_id, ctx))
				return true;

		if (deal_constant(bb, b, i, ctx))
			continue;

		ctx.processing(ins);

		for (auto sym : ins.symbolicExpressions)
		{

			sym->setComment(std::to_string(i));
		}

		cs_free(insn, count);

		b.add(ins);
	}

	return false;
}

void update_ins(basicblock &bb, int index, char *buffer, int size)
{

	if (bb[index].buffer != nullptr)
	{
		free(bb[index].buffer);
		bb[index].buffer = nullptr;
	}

	bb[index].buffer = (char *)malloc(size);
	memcpy(bb[index].buffer, buffer, size);
	bb[index].size = size;
}

void print_basicblock(basicblock bb)
{

	for (size_t i = 0; i < bb.size(); i++)
	{
		cs_insn *insn = nullptr;

		auto count = cs_disasm(handle, (const uint8 *)bb[i].buffer, bb[i].size, bb[i].address, 0, &insn);

		printf("0x%llx: %s %s\n", bb[i].address, cs_insn_name(handle, insn->id), insn->op_str);

		cs_free(insn, count);
	}
}

bool deal_constant(basicblock bb, BasicBlock &b, int i, triton::Context &ctx)
{

	cs_insn *insn;

	Instruction ins;
	bool deal = false;
	char buf[0x10] = {0};
	char buffer[0x10] = {0};
	unsigned char *encoding = nullptr;
	size_t size = 0;
	size_t stat = 0;

	uc_mem_read(uc, bb[i].address, buffer, bb[i].ori_size);

	auto count = cs_disasm(handle, (uint8 *)buffer, bb[i].ori_size, bb[i].address, 0, &insn);

	std::string str = cs_insn_name(handle, insn->id) + std::string(" ");

	std::string prex = "";

	auto dt = insn->detail->x86;

	if (dt.op_count == 2 && dt.operands[1].type == X86_OP_MEM)
	{

		auto index = dt.operands[1].mem.index;
		auto base = dt.operands[1].mem.base;
		auto disp = dt.operands[1].mem.disp;
		auto scale = dt.operands[1].mem.scale;

		if (dt.operands[1].size == 4)
		{
			prex += " dword ptr ";
		}
		else if (dt.operands[1].size == 8)
		{
			prex += " qword ptr ";
		}
		else if (dt.operands[1].size == 1)
		{
			prex += " byte ptr ";
		}
		else if (dt.operands[1].size == 2)
		{
			prex += " word ptr ";
		}

		if (index != X86_REG_INVALID && base != X86_REG_INVALID)
		{

			if (dt.operands[0].type == X86_OP_REG)
				str += cs_reg_name(handle, dt.operands[0].reg);

			if (is_from_constant(bb, index, ctx))
			{

				auto imm = reg_get_value_by_id(bb[i].regs, index) * scale + disp;

				imm > 0 ? sprintf(buf, " + 0x%x", abs(imm)) : imm != 0 ? sprintf(buf, " - 0x%x", abs(imm))
																	   : 0;

				str += std::string(",") + prex + "[" + std::string(cs_reg_name(handle, base)) + buf + "]";

				// 打印地址和指令
				// printf("%s\n", str.c_str());

				deal = true;
			}
			else if (is_from_constant(bb, base, ctx))
			{
				auto imm = reg_get_value_by_id(bb[i].regs, base) + disp;

				imm > 0 ? sprintf(buf, " + 0x%x", abs(imm)) : imm != 0 ? sprintf(buf, " - 0x%x", abs(imm))
																	   : 0;

				str += std::string(",") + prex + "[" + std::string(cs_reg_name(handle, index)) + buf + "]";

				deal = true;
			}
			else
			{

				auto cond1 = reg_get_value_by_id(bb[i].regs, index) * scale + disp >= -0x30 && reg_get_value_by_id(bb[i].regs, index) * scale + disp <= 0x30;
				auto cond2 = reg_get_value_by_id(bb[i].regs, base) + disp >= -0x30 && reg_get_value_by_id(bb[i].regs, base) + disp <= 0x30;

				if (cond1)
				{

					cs_insn *ins = insn;

					auto imm = reg_get_value_by_id(bb[i].regs, index) * scale + disp;
					imm > 0 ? sprintf(buf, " + 0x%x", abs(imm)) : imm != 0 ? sprintf(buf, " - 0x%x", abs(imm))
																		   : 0;

					str += std::string(",") + prex + "[" + std::string(cs_reg_name(handle, base)) + buf + "]";
					// printf("%s\n", str.c_str());

					deal = true;
				}
				else if (cond2)
				{
					auto imm = reg_get_value_by_id(bb[i].regs, base) + disp;
					imm > 0 ? sprintf(buf, " + 0x%x", abs(imm)) : imm != 0 ? sprintf(buf, " - 0x%x", abs(imm))
																		   : 0;

					str += std::string(",") + prex + "[" + std::string(cs_reg_name(handle, base)) + buf + "]";
					// printf("%s\n", str.c_str());

					deal = true;
				}
			}
		}
	}
	else if (dt.op_count == 2 && dt.operands[0].type == X86_OP_MEM)
	{

		auto index = dt.operands[0].mem.index;
		auto base = dt.operands[0].mem.base;
		auto disp = dt.operands[0].mem.disp;
		auto scale = dt.operands[0].mem.scale;

		if (dt.operands[0].size == 4)
		{
			prex += " dword ptr ";
		}
		else if (dt.operands[0].size == 8)
		{
			prex += " qword ptr ";
		}
		else if (dt.operands[0].size == 1)
		{
			prex += " byte ptr ";
		}
		else if (dt.operands[0].size == 2)
		{
			prex += " word ptr ";
		}

		if (index != X86_REG_INVALID && base != X86_REG_INVALID)
		{

			if (is_from_constant(bb, index, ctx))
			{

				auto imm = reg_get_value_by_id(bb[i].regs, index) * scale + disp;

				imm > 0 ? sprintf(buf, " + 0x%x", abs(imm)) : imm != 0 ? sprintf(buf, " - 0x%x", abs(imm))
																	   : 0;

				str += prex + "[" + std::string(cs_reg_name(handle, base)) + buf + "], ";

				// printf("%s\n", str.c_str());

				deal = true;
			}
			else if (is_from_constant(bb, base, ctx))
			{

				auto imm = reg_get_value_by_id(bb[i].regs, base) + disp;

				imm > 0 ? sprintf(buf, " + 0x%x", abs(imm)) : imm != 0 ? sprintf(buf, " - 0x%x", abs(imm))
																	   : 0;

				str += prex + "[" + std::string(cs_reg_name(handle, index)) + buf + "], ";

				// printf("%s\n", str.c_str());

				deal = true;
			}
			else
			{

				auto cond1 = reg_get_value_by_id(bb[i].regs, index) * scale + disp >= -0x30 && reg_get_value_by_id(bb[i].regs, index) * scale + disp <= 0x30;
				auto cond2 = reg_get_value_by_id(bb[i].regs, base) + disp >= -0x30 && reg_get_value_by_id(bb[i].regs, base) + disp <= 0x30;

				if (cond1)
				{

					auto imm = reg_get_value_by_id(bb[i].regs, index) * scale + disp;

					imm > 0 ? sprintf(buf, " + 0x%x", abs(imm)) : imm != 0 ? sprintf(buf, " - 0x%x", abs(imm))
																		   : 0;

					str += prex + "[" + std::string(cs_reg_name(handle, base)) + buf + "], ";

					// printf("%s\n", str.c_str());

					deal = true;
				}
				else if (cond2)
				{

					auto imm = reg_get_value_by_id(bb[i].regs, base) + disp;

					imm > 0 ? sprintf(buf, " + 0x%x", abs(imm)) : imm != 0 ? sprintf(buf, " - 0x%x", abs(imm))
																		   : 0;

					str += prex + "[" + std::string(cs_reg_name(handle, base)) + buf + "], ";
					// printf("%s\n", str.c_str());

					deal = true;
				}
			}

			if (deal)
			{
				if (dt.operands[1].type == X86_OP_REG)
					str += cs_reg_name(handle, dt.operands[1].reg);
				else if (dt.operands[1].type == X86_OP_IMM)
				{
					sprintf(buf, "0x%llx", dt.operands[1].imm);
					str += buf;
				}
			}
		}
	}
	if (dt.op_count == 2 && dt.operands[0].type == X86_OP_REG && dt.operands[1].type == X86_OP_REG)
	{

		auto reg = dt.operands[1].reg;

		if (is_from_constant(bb, reg, ctx))
		{

			do
			{

				if (insn->id == X86_INS_MOVZX ||
					insn->id == X86_INS_MOVSX ||
					insn->id == X86_INS_XCHG ||
					insn->id == X86_INS_BTC ||
					insn->id == X86_INS_BTS ||
					insn->id == X86_INS_BTR ||
					insn->id == X86_INS_BT ||
					insn->id == X86_INS_XOR ||
					insn->id == X86_INS_XADD ||
					insn->id == X86_INS_MOVABS ||
					insn->id == X86_INS_MOVSXD ||
					insn->id == X86_INS_CMOVG ||
					insn->id == X86_INS_SAR ||
					insn->id == X86_INS_ROR ||
					insn->id == X86_INS_ROL ||
					insn->id == X86_INS_SHR ||
					insn->id == X86_INS_SAL ||
					insn->id == X86_INS_AND ||
					insn->id == X86_INS_SUB ||
					insn->id == X86_INS_ADD ||
					insn->id == X86_INS_CMOVP ||
					insn->id == X86_INS_SHL ||
					insn->id == X86_INS_CMOVAE ||
					insn->id == X86_INS_OR ||
					insn->id == X86_INS_ADC)
					break;

				auto imm = reg_get_value_by_id(bb[i].regs, reg);

				if (dt.operands[0].size == 8)
					imm &= 0xFFFFFFFFFFFFFFFF;
				else if (dt.operands[0].size == 4)
					imm &= 0xFFFFFFFF;
				else if (dt.operands[0].size == 2)
					imm &= 0xFFFF;
				else if (dt.operands[0].size == 1)
					imm &= 0xFF;

				sprintf(buf, " 0x%x", imm);

				str += cs_reg_name(handle, dt.operands[0].reg) + std::string(",") + std::string(buf);

				// 打印地址和指令
				// printf("%s\n", str.c_str());

				deal = true;

			} while (0);
		}
	}

	if (!deal)
		return false;

	ks_asm(ks, str.c_str(), bb[i].address, &encoding, &size, &stat);

	// update_ins(bb, i, (char*)encoding, size);

	ins = Instruction(bb[i].address, encoding, size);

	try
	{

		ctx.disassembly(ins);
	}
	catch (...)
	{

		printf("%llx\t%s\n", bb[i].address, str.c_str());
	}

	b.add(ins);

	ks_free(encoding);

	ctx.processing(ins);

	for (auto sym : ins.symbolicExpressions)
	{

		sym->setComment(std::to_string(i));
	}

	cs_free(insn, count);

	return true;
}

BasicBlock create_basicblock(basicblock bb)
{

	BasicBlock b;
	triton::Context ctx;
	ctx.setArchitecture(triton::arch::ARCH_X86_64);
	ctx.reset();

	char buffer[0x10] = {0};

	for (size_t i = 0; i < bb.size(); i++)
	{

		uc_mem_read(uc, bb[i].address, buffer, bb[i].size);

		auto count = cs_disasm(handle, (const uint8 *)buffer, bb[i].ori_size, bb[i].address, 0, &insn);

		auto dt = insn->detail->x86;

		auto ins = Instruction(bb[i].address, buffer, bb[i].size);

		ctx.disassembly(ins);

		if (ins.isControlFlow())
		{

			if (insn->id == X86_INS_CALL)
			{

				char buf[] = {"\x48\x8d\x64\x24\xf8"};
				update_ins(bb, i, buf, sizeof(buf));
				ins = Instruction(bb[i].address, buf, bb[i].size);

				ctx.disassembly(ins);

				ctx.processing(ins);

				b.add(ins);
			}

			cs_free(insn, count);

			continue;
		}

		if (deal_constant(bb, b, i, ctx))
			continue;

		ctx.processing(ins);

		for (auto sym : ins.symbolicExpressions)
		{

			sym->setComment(std::to_string(i));
		}

		cs_free(insn, count);

		b.add(ins);
	}

	return b;
}

void init_triton_regs(_INS_RECORD record)
{

	ctx.setConcreteRegisterValue(ctx.getRegister("rsp"), record.regs.regs.rsp.u);
}

std::vector<ULONG64> trace_titan(basicblock bb, uint64 address, int reg_id)
{

	BasicBlock b;

	cs_insn *insn;
	triton::Context ctx;
	ctx.setArchitecture(triton::arch::ARCH_X86_64);
	ctx.reset();

	char buffer[0x10] = {0};

	std::vector<ULONG64> sliceExpVec;

	for (size_t i = 0; i < bb.size(); i++)
	{

		uc_mem_read(uc, bb[i].address, buffer, bb[i].size);

		auto count = cs_disasm(handle, (const uint8 *)buffer, bb[i].ori_size, bb[i].address, 0, &insn);

		auto dt = insn->detail->x86;

		auto ins = Instruction(bb[i].address, buffer, bb[i].ori_size);

		ctx.disassembly(ins);

		if (ins.isControlFlow())
		{

			if (insn->id == X86_INS_CALL)
			{

				char buf[] = {"\x48\x8d\x64\x24\xf8"};

				ins = Instruction(bb[i].address, buf, bb[i].size);

				ctx.disassembly(ins);

				ctx.processing(ins);

				for (auto sym : ins.symbolicExpressions)
				{
					sym->setComment(std::to_string(i));
				}

				b.add(ins);
			}

			cs_free(insn, count);

			continue;
		}

		if (bb[i].address == address)
		{

			do
			{

				auto reg_name = cs_reg_name(handle, reg_id);

				if (!reg_name)
					break;

				if (!_stricmp(reg_name, "riz"))
					break;

				auto rc = ctx.getRegister(reg_name);
				auto regExp = ctx.getSymbolicRegister(rc);
				if (regExp == NULL)
					break;

				auto sliceExp = ctx.sliceExpressions(regExp);

				for (auto in : sliceExp)
				{
					sliceExpVec.push_back(atoll(in.second->getComment().c_str()));
				}

				std::sort(sliceExpVec.begin(), sliceExpVec.end());

			} while (0);

			cs_free(insn, count);

			return sliceExpVec;
		}

		// if (deal_constant(bb, b, i,ctx))
		//	continue;

		ctx.processing(ins);

		for (auto sym : ins.symbolicExpressions)
		{

			sym->setComment(std::to_string(i));
		}

		cs_free(insn, count);

		b.add(ins);
	}

	return sliceExpVec;
}

std::vector<ULONG64> trace_titan(basicblock bb, uint64 index, int reg_id, int reg_id_exclude, int reg_id_end)
{

	std::vector<ULONG64> titan_vector;

	int i = index;
	int reg = reg_id;
	cs_insn *insn;
	char buf[0x10] = {0};
	bool isEndTrace = false;
	bool isNewTrace = false;
	do
	{

		isNewTrace = false;

		auto ret = trace_titan(bb, bb[i].address, reg);

		if (!ret.size())
			break;

		std::reverse(ret.begin(), ret.end());

		for (auto t : ret)
		{

			uc_mem_read(uc, bb[t].address, buf, bb[t].ori_size);

			auto cou = cs_disasm(handle, (uint8 *)buf, bb[t].ori_size, bb[t].address, 0, &insn);

			auto detail = insn->detail->x86;

			// print_indexs(bb, ret);

			if (detail.operands[1].type == X86_OP_MEM && detail.operands[1].mem.index != X86_REG_INVALID)
			{

				if (detail.operands[1].mem.base == (x86_reg)reg_id_exclude)
				{
					reg = detail.operands[1].mem.index;
					isNewTrace = true;
				}
				else if (detail.operands[1].mem.index == (x86_reg)reg_id_exclude)
				{

					reg = detail.operands[1].mem.base;
					isNewTrace = true;
				}
				else
				{

					auto cond1 = reg_get_value_by_id(bb[t].regs, detail.operands[1].mem.index) * detail.operands[1].mem.scale + detail.operands[1].mem.disp >= -0x30 && reg_get_value_by_id(bb[t].regs, detail.operands[1].mem.index) * detail.operands[1].mem.scale + detail.operands[1].mem.disp <= 0x30;
					auto cond2 = reg_get_value_by_id(bb[t].regs, detail.operands[1].mem.base) + detail.operands[1].mem.disp >= -0x30 && reg_get_value_by_id(bb[t].regs, detail.operands[1].mem.base) + detail.operands[1].mem.disp <= 0x30;
					if ((cond1) && detail.operands[1].mem.base != vm.v_rsp.u)
					{
						reg = detail.operands[1].mem.base;
						isNewTrace = true;
					}
					else if ((cond2) && detail.operands[1].mem.index != vm.v_rsp.u)
					{

						reg = detail.operands[1].mem.index;
						isNewTrace = true;
					}
				}
			}
			else if (detail.operands[1].type == X86_OP_REG && detail.operands[1].reg == reg_id_exclude)
			{

				isNewTrace = true;
			}

			if (detail.operands[1].type == X86_OP_MEM)
			{

				auto cond1 = detail.operands[1].mem.base == (x86_reg)reg_id_end;
				auto cond2 = detail.operands[1].mem.index == (x86_reg)reg_id_end;
				// printf("%d %d\n", cond1, cond2);

				if (cond1)
				{
					isEndTrace = true;
				}

				if (cond2)
				{
					isEndTrace = true;
				}
			}

			if (t == ret[ret.size() - 1] && isNewTrace == false)
				isEndTrace = true;

			if (isNewTrace || isEndTrace)
			{
				titan_vector.push_back(t);
				i = t;
				cs_free(insn, cou);
				break;
			}

			titan_vector.push_back(t);
			cs_free(insn, cou);
		}

		if (isEndTrace)
		{
			break;
		}

	} while (1);

	std::reverse(titan_vector.begin(), titan_vector.end());
	titan_vector.erase(std::unique(titan_vector.begin(), titan_vector.end()), titan_vector.end());

	return titan_vector;
}

std::vector<ULONG64>  trace_titan(basicblock bb, uint64 index, uint64 end_index, int reg_id, int reg_id_exclude, int reg_id_end)
{

	std::vector<ULONG64> titan_vector;

	int i = index;
	int reg = reg_id;
	cs_insn* insn;
	char buf[0x10] = { 0 };
	bool isEndTrace = false;
	bool isNewTrace = false;
	do
	{

		isNewTrace = false;

		auto ret = trace_titan(bb, bb[i].address, reg);

		if (!ret.size())
			break;

		std::reverse(ret.begin(), ret.end());

		for (auto z = 0;z < ret.size(); z++)
		{

			auto t = ret[z];

			uc_mem_read(uc, bb[t].address, buf, bb[t].ori_size);

			auto cou = cs_disasm(handle, (uint8*)buf, bb[t].ori_size, bb[t].address, 0, &insn);

			auto detail = insn->detail->x86;

			// print_indexs(bb, ret);

			if (detail.operands[1].type == X86_OP_MEM && detail.operands[1].mem.index != X86_REG_INVALID)
			{

				if (detail.operands[1].mem.base == (x86_reg)reg_id_exclude)
				{
					reg = detail.operands[1].mem.index;
					isNewTrace = true;
				}
				else if (detail.operands[1].mem.index == (x86_reg)reg_id_exclude)
				{

					reg = detail.operands[1].mem.base;
					isNewTrace = true;
				}
				else
				{

					auto cond1 = reg_get_value_by_id(bb[t].regs, detail.operands[1].mem.index) * detail.operands[1].mem.scale + detail.operands[1].mem.disp >= -0x30 && reg_get_value_by_id(bb[t].regs, detail.operands[1].mem.index) * detail.operands[1].mem.scale + detail.operands[1].mem.disp <= 0x30;
					auto cond2 = reg_get_value_by_id(bb[t].regs, detail.operands[1].mem.base) + detail.operands[1].mem.disp >= -0x30 && reg_get_value_by_id(bb[t].regs, detail.operands[1].mem.base) + detail.operands[1].mem.disp <= 0x30;
					if ((cond1) && detail.operands[1].mem.base != vm.v_rsp.u)
					{
						reg = detail.operands[1].mem.base;
						isNewTrace = true;
					}
					else if ((cond2) && detail.operands[1].mem.index != vm.v_rsp.u)
					{

						reg = detail.operands[1].mem.index;
						isNewTrace = true;
					}
				}
			}
			else if (detail.operands[1].type == X86_OP_REG && detail.operands[1].reg == reg_id_exclude)
			{

				isNewTrace = true;
			}

			if (detail.operands[1].type == X86_OP_MEM)
			{

				auto cond1 = detail.operands[1].mem.base == (x86_reg)reg_id_end;
				auto cond2 = detail.operands[1].mem.index == (x86_reg)reg_id_end;
				// printf("%d %d\n", cond1, cond2);

				if (cond1)
				{
					isEndTrace = true;
				}

				if (cond2)
				{
					isEndTrace = true;
				}
			}

			if (t == ret[ret.size() - 1] && isNewTrace == false)
				isEndTrace = true;

			auto t1 = ret[z+1];

			if (t1 < end_index) {
				isEndTrace = true;
			}

			if (isNewTrace || isEndTrace)
			{
				titan_vector.push_back(t);
				i = t;
				cs_free(insn, cou);
				break;
			}

			titan_vector.push_back(t);
			cs_free(insn, cou);
		}

		if (isEndTrace)
		{
			break;
		}

	} while (1);

	std::reverse(titan_vector.begin(), titan_vector.end());
	titan_vector.erase(std::unique(titan_vector.begin(), titan_vector.end()), titan_vector.end());

	return titan_vector;
}


std::vector<ULONG64> trace_register(basicblock bb, uint64 start_index, uint64 end_index, int reg_id_trace)
{

	BasicBlock b;
	triton::Context ctx;
	ctx.setArchitecture(triton::arch::ARCH_X86_64);
	ctx.reset();

	std::vector<ULONG64> ret_indexs;
	char buffer[0x10] = {0};
	cs_insn *insn = nullptr;

	ctx.taintRegister(ctx.getRegister(cs_reg_name(handle, reg_id_trace)));

	for (auto i = start_index; i < end_index; i++)
	{

		uc_mem_read(uc, bb[i].address, buffer, bb[i].size);

		auto count = cs_disasm(handle, (const uint8 *)buffer, bb[i].ori_size, bb[i].address, 0, &insn);

		auto dt = insn->detail->x86;

		auto ins = Instruction(bb[i].address, buffer, bb[i].size);

		ctx.disassembly(ins);

		if (ins.isControlFlow())
		{

			if (insn->id == X86_INS_CALL)
			{

				char buf[] = {"\x48\x8d\x64\x24\xf8"};

				ins = Instruction(bb[i].address, buf, bb[i].size);

				ctx.disassembly(ins);

				ctx.processing(ins);

				b.add(ins);
			}

			cs_free(insn, count);

			continue;
		}

		ctx.processing(ins);

		auto read = ins.getReadRegisters();
		auto write = ins.getWrittenRegisters();

		printf("%llx %s %s\n", bb[i].address, insn->mnemonic, insn->op_str);

		// 打印访问的寄存器
		for (auto r : read)
		{
			printf("read %s\n", r.first.getName().c_str());
		}

		for (auto r : write)
		{
			printf("write %s\n", r.first.getName().c_str());
		}

		if (ins.isTainted())
		{

			ret_indexs.push_back(i);
		}

		cs_free(insn, count);

		b.add(ins);
	}

	return ret_indexs;
}

bool trace_match(basicblock bb, std::vector<ULONG64> indexs, std::vector<std::regex> regexs, std::vector<ULONG64> &ret_indexs)
{

	// 指令序列匹配正则表达式，如果完全匹配则打印
	int current = 0;
	char buf[0x10] = {0};
	cs_insn *insn = nullptr;

	for (size_t i = 0; i < indexs.size(); i++)
	{

		uc_mem_read(uc, bb[indexs[i]].address, buf, bb[indexs[i]].ori_size);

		auto count = cs_disasm(handle, (uint8 *)buf, bb[indexs[i]].ori_size, bb[indexs[i]].address, 0, &insn);

		auto detail = insn->detail->x86;

		std::string str(insn->mnemonic);
		str += " ";
		str += insn->op_str;

		if (std::regex_match(str.c_str(), regexs[current]))
		{
			ret_indexs.push_back(indexs[i]);
			current++;
		}

		if (current == regexs.size())
		{

			return true;
		}

		cs_free(insn, count);
	}

	return false;
}

bool trace_match(basicblock bb, uint64 start_index, uint64 end_index, std::vector<std::regex> regexs, std::vector<ULONG64> &ret_indexs)
{

	std::vector<ULONG64> indexs;

	for (auto i = start_index; i <= end_index; i++)
	{
		indexs.push_back(i);
	}

	return trace_match(bb, indexs, regexs, ret_indexs);
}

void print_indexs(basicblock bb, std::vector<ULONG64> indexs)
{

	cs_insn *ins;
	char buf[16] = {0};

	for (auto t : indexs)
	{

		uc_mem_read(uc, bb[t].address, buf, bb[t].ori_size);

		auto cou = cs_disasm(handle, (uint8 *)buf, bb[t].ori_size, bb[t].address, 0, &ins);

		printf("%llx %s %s\n", bb[t].address, ins->mnemonic, ins->op_str);

		cs_free(ins, cou);
	}
}

bool is_from_vip(basicblock bb,int i,int reg_id, std::vector<BASIC_OPERATION> operates) {



	 auto ret = trace_titan(bb, i, reg_id, X86_REG_RSP, vm.v_rip.u);




	 return false;


}



bool r_vreg_offset(basicblock bb,std::vector<ULONG64> ret, BASIC_OPERATION& op,std::vector<ULONG64>& ret_indexs) {


	{
		std::regex reg1(R"(lea .*,.*\[rsp.*\])");
		std::vector<std::regex> regs;
		regs.push_back(reg1);
		std::vector<ULONG64> ret_indexs;

		// print_indexs(bb, ret);

		if (trace_match(bb, ret, regs, ret_indexs))
		{
			auto z = ret_indexs[0];
			cs_insn* ins;
			char buf[16] = { 0 };
			uc_mem_read(uc, bb[z].address, buf, bb[z].ori_size);

			auto cou = cs_disasm(handle, (uint8*)buf, bb[z].ori_size, bb[z].address, 0, &ins);

			auto detail = ins->detail->x86;
			auto op0 = detail.operands[0];
			auto op1 = detail.operands[1];

			ULONG64 value = 0;

			if (op1.mem.base == X86_REG_RSP)
			{
				value = reg_get_value_by_id(bb[z].regs, X86_REG_RSP) - vm.v_context.u + reg_get_value_by_id(bb[z].regs, op1.mem.index) * op1.mem.scale + op1.mem.disp;
			}

			if (op1.mem.index == X86_REG_RSP)
			{
				value = op.read_reg_offset.reg_id = reg_get_value_by_id(bb[z].regs, X86_REG_RSP) - vm.v_context.u + reg_get_value_by_id(bb[z].regs, op1.mem.base) + op1.mem.disp;
			}





			if (value >= 0)
			{
				op.read_reg_offset.reg_id = value;

				cs_free(ins, cou);
				return true;
			}

		

			cs_free(ins, cou);

		}
	}

	{
		std::regex reg1(R"(ad.*,.*rsp)");
		std::vector<std::regex> regs;
		regs.push_back(reg1);
		std::vector<ULONG64> ret_indexs;

		if (trace_match(bb, ret, regs, ret_indexs))
		{

			auto z = ret_indexs[0];

			cs_insn* ins;
			char buf[16] = { 0 };

			uc_mem_read(uc, bb[z].address, buf, bb[z].ori_size);

			auto cou = cs_disasm(handle, (uint8*)buf, bb[z].ori_size, bb[z].address, 0, &ins);

			auto detail = ins->detail->x86;

			ULONG64 value = 0;
			
			if (detail.op_count == 2 && detail.operands[1].reg == X86_REG_RSP && detail.operands[0].type == X86_OP_REG)
			{
				 value= reg_get_value_by_id(bb[z].regs, X86_REG_RSP) - vm.v_context.u + reg_get_value_by_id(bb[z].regs, detail.operands[0].reg) + detail.operands[1].mem.disp;
			}

			if (value > 0) {

				op.read_reg_offset.reg_id = value;
				cs_free(ins, cou);
				return true;
			}


			cs_free(ins, cou);

		}
	}

	return false;

}



bool VPopReg64(basicblock bb)
{

	ctx.reset();
	char buffer[0x10] = {0};

	std::vector<BASIC_OPERATION> operates;

	LONG64 reg_value = 0;

	bool read_from_rsp = false;
	int offset = 0;
	int last_read_rsp_index = 0;


	bool read_vip_byte = false;
	int last_read_vip_index = 0;
	int read_vip_size = 0;

	bool read_vcontext_offset = false;
	int read_vcontext_offset_type = 0;
	int read_vcontext_reg_id = 0;
	

	bool read_reg = false;
	int last_read_reg_index = 0;
	int read_reg_type = -1;

	bool write_reg = false;

	int begin = 0;

	int begin_operation = 0;


	bool isTranslate = false;


	for (size_t i = 0; i < bb.size(); i++) {

		uc_mem_read(uc, bb[i].address, buffer, bb[i].size);

		auto count = cs_disasm(handle, (const uint8*)buffer, bb[i].ori_size, bb[i].address, 0, &insn);

		auto dt = insn->detail->x86;


		auto op0 = dt.operands[0];
		auto op1 = dt.operands[1];


		if (op1.mem.base == X86_REG_RIP || op1.mem.base == X86_REG_RIP) {



			isTranslate = true;
			cs_free(insn, count);

			break;

		}



		cs_free(insn, count);

	}

	auto baseaddress_i = 0;
	auto v_rip_i = 0;

	if (isTranslate)
	{


		for (size_t i = 0; i < bb.size(); i++) {

			uc_mem_read(uc, bb[i].address, buffer, bb[i].size);

			auto count = cs_disasm(handle, (const uint8*)buffer, bb[i].ori_size, bb[i].address, 0, &insn);

			auto dt = insn->detail->x86;


			auto op0 = dt.operands[0];
			auto op1 = dt.operands[1];


			if (op1.mem.base == X86_REG_RIP || op1.mem.base == X86_REG_RIP) {

				vm.v_base.u = op0.reg;
				baseaddress_i = i;
				cs_free(insn, count);
				printf("v_base:%s\n", cs_reg_name(handle, vm.v_base.u));

				break;

			}

			cs_free(insn, count);

		}

		
		for (size_t i = baseaddress_i + 1; i < bb.size(); i++) {

			uc_mem_read(uc, bb[i].address, buffer, bb[i].size);

			auto count = cs_disasm(handle, (const uint8*)buffer, bb[i].ori_size, bb[i].address, 0, &insn);

			auto dt = insn->detail->x86;


			auto op0 = dt.operands[0];
			auto op1 = dt.operands[1];

			if (op0.reg == vm.v_base.u && insn->id != X86_INS_JMP) {


				auto f = i;
				do {

					auto ret = trace_titan(bb, f, op1.reg, X86_REG_RSP, X86_REG_RIZ);

					if(ret.size() == 0)
						break;
					auto s = ret[ret.size() - 1];


					cs_insn* ins;
					char buffer[0x10] = { 0 };
					uc_mem_read(uc, bb[s].address, buffer, bb[s].size);

					auto count = cs_disasm(handle, (const uint8*)buffer, bb[s].ori_size, bb[s].address, 0, &ins);

					auto dt = ins->detail->x86;


					auto op0 = dt.operands[0];
					auto op1 = dt.operands[1];

					if ((ins->id == X86_INS_MOV || ins->id == X86_INS_ADD || ins->id == X86_INS_ADC || ins->id == X86_INS_OR || ins->id == X86_INS_XOR)
						&&  op1.size == 4
						&& op1.type == X86_OP_MEM)
					{
						vm.v_rip.u = op1.mem.base;
						v_rip_i = s;
						printf("v_rip:%s\n", cs_reg_name(handle, vm.v_rip.u));

						cs_free(ins, count);
						break;
					}
					else
					{
						f = s;
					}

					cs_free(ins, count);


				} while (1);


			}


			cs_free(insn, count);

		}



		for (size_t i = v_rip_i; i >=0 ; i--) {

			uc_mem_read(uc, bb[i].address, buffer, bb[i].size);

			auto count = cs_disasm(handle, (const uint8*)buffer, bb[i].ori_size, bb[i].address, 0, &insn);

			auto dt = insn->detail->x86;


			auto op0 = dt.operands[0];
			auto op1 = dt.operands[1];


			if (op1.reg == vm.v_rip.u && (insn->id == X86_INS_MOV || insn->id == X86_INS_ADD || insn->id == X86_INS_ADC || insn->id == X86_INS_OR || insn->id == X86_INS_XOR)) {

				vm.v_key.u = op0.reg;
				cs_free(insn, count);
				printf("v_key:%s\n", cs_reg_name(handle, vm.v_key.u));

				break;

			}

			cs_free(insn, count);

		}





		for (size_t i = 0; i < baseaddress_i; i++) {

			uc_mem_read(uc, bb[i].address, buffer, bb[i].size);

			auto count = cs_disasm(handle, (const uint8*)buffer, bb[i].ori_size, bb[i].address, 0, &insn);

			auto dt = insn->detail->x86;


			auto op0 = dt.operands[0];
			auto op1 = dt.operands[1];


			if (insn->id == X86_INS_LEA && (op1.mem.base == vm.v_rsp.u || op1.mem.index == vm.v_rsp.u) && op0.reg != vm.v_rsp.u) {

				vm.v_rsp.u = op0.reg;
				cs_free(insn, count);
				break;

			}
			else  if(op1.reg == vm.v_rsp.u){

				vm.v_rsp.u = op0.reg;
				printf("v_rsp:%s\n",cs_reg_name(handle,vm.v_rsp.u));

				cs_free(insn, count);
				break;
			}

			cs_free(insn, count);

		}

		



	}


	auto i = 0;
	if (isTranslate)
		i = baseaddress_i + 1;

	for (; i < bb.size(); i++)
	{

		uc_mem_read(uc, bb[i].address, buffer, bb[i].size);

		auto count = cs_disasm(handle, (const uint8 *)buffer, bb[i].ori_size, bb[i].address, 0, &insn);

		auto dt = insn->detail->x86;


		auto op0 = dt.operands[0];
		auto op1 = dt.operands[1];




		if (dt.op_count == 2)
		{


			do
			{

				if (op0.type == X86_OP_REG && (op1.mem.base == vm.v_rsp.u || op1.mem.index == vm.v_rsp.u))
				{
					if (op0.reg != vm.v_rsp.u && (op1.mem.base == vm.v_rsp.u || op1.mem.index == vm.v_rsp.u))
					{
						read_from_rsp = true;

						last_read_rsp_index = i;

						reg_value = op0.reg;
						BASIC_OPERATION op = {BASIC_OPERATION_TYPE::R_STACK};

						op.address = bb[i].address;

						if (op1.mem.base == vm.v_rsp.u)
							op.read_vsp.offset = reg_get_value_by_id(bb[i].regs, op1.mem.index) * op1.mem.scale + op1.mem.disp;
						else
							op.read_vsp.offset = reg_get_value_by_id(bb[i].regs, op1.mem.base) + op1.mem.disp;

						offset = op.read_vsp.offset;
						op.read_vsp.save_reg_id = op0.reg;

						operates.push_back(op);
					}
				}

				if (op0.type == X86_OP_REG && op0.reg == vm.v_rsp.u)
				{

					if (insn->id == X86_INS_CMP)
						break;

					BASIC_OPERATION op = {BASIC_OPERATION_TYPE::C_VSP};
					op.address = bb[i].address;
					op.change_vsp.step = reg_get_value_by_id(bb[i + 1].regs, (x86_reg)vm.v_rsp.u) - reg_get_value_by_id(bb[i].regs, (x86_reg)vm.v_rsp.u);
					if (read_from_rsp)
						offset -= op.change_vsp.step;
					operates.push_back(op);
				}




			} while (0);

			// write stack
			if (op0.type == X86_OP_MEM && op1.type == X86_OP_REG && (op0.mem.base == vm.v_rsp.u || op0.mem.index == vm.v_rsp.u))
			{
				auto offset = 0;
				if (op0.mem.base == vm.v_rsp.u)
					offset = reg_get_value_by_id(bb[i].regs, op0.mem.index) * op0.mem.scale + op0.mem.disp;
				else if (op0.mem.index == vm.v_rsp.u)
					offset = reg_get_value_by_id(bb[i].regs, op0.mem.base) + op0.mem.disp;
				ULONG64 t = i;
				int reg = op1.reg;
				do
				{

					auto ret = trace_titan(bb, t, reg, X86_REG_RSP, vm.v_rip.u);

					if (!ret.size())
						break;

					t = ret.at(0);

					std::reverse(ret.begin(), ret.end());


					{
						auto ret = trace_titan(bb, i, begin, op1.reg, X86_REG_RSP, vm.v_rip.u);

						std::reverse(ret.begin(), ret.end());


						if (ret.size())
						{

							std::vector<BASIC_OPERATION> opers;

							for (auto d = begin_operation; d < operates.size(); d++)
							{
								if (operates[d].type == R_REG_VIP || operates[d].type == R_VREG_IMM || operates[d].type == R_VREG_VIP || operates[d].type == R_STACK)
								{
									opers.push_back(operates[d]);
								}

							}

							std::vector<ULONG64> ret_use;
							auto y = 0;
							for (; y < ret.size(); y++)
							{
								auto t = ret[y];
								//如果bb[t].address == opers[opers.size() - 1].address

								if (opers.size() >= 1) {

									if (bb[t].address == opers[opers.size() - 1].address)
									{
										break;
									}

								}


								ret_use.push_back(t);


							}


							if (opers.size() == 0)
							{

								std::string str = "(mov|add|adc|or|xor).*,.*\\[.*" + std::string(cs_reg_name(handle, vm.v_rip.u)) + ".*\\]";

								std::regex reg1(str);

								std::vector<std::regex> regs;

								regs.push_back(reg1);

								std::vector<ULONG64> ret_indexs;

								std::vector<ULONG64> ret;

								ret.push_back(ret_use[ret_use.size()-1]);

								if (trace_match(bb, ret, regs, ret_indexs))
								{




									auto z = ret_use[ret_use.size()-1];

									ret_use.pop_back();


									cs_insn* ins;

									char buf[16] = { 0 };

									uc_mem_read(uc, bb[z].address, buf, bb[z].ori_size);

									auto cou = cs_disasm(handle, (uint8*)buf, bb[z].ori_size, bb[z].address, 0, &ins);

									auto detail = ins->detail->x86;

									auto op0 = detail.operands[0];

									auto op1 = detail.operands[1];


									std::string pre = "";
									if(op1.size == 1)
										pre = "byte ptr ";
									else if(op1.size == 2)
										pre = "word ptr ";
									else if(op1.size == 4)
										pre = "dword ptr ";
									else if(op1.size == 8)
										pre = "qword ptr ";

									int value;

									if(op1.mem.base == vm.v_rip.u)
									{
										value = reg_get_value_by_id(bb[z].regs, op1.mem.index) * op1.mem.scale + op1.mem.disp;
									}
									else if(op1.mem.index == vm.v_rip.u)
									{
										value = reg_get_value_by_id(bb[z].regs, op1.mem.base) + op1.mem.disp;
									}

									char buff[0x10] = {0}; 
									value >0 ? sprintf(buff," + 0x%x",abs(value)) :  value < 0 ? sprintf(buff," - 0x%x",abs(value)) : sprintf(buff,"",value);

									//print_indexs(bb, { z });

									std::string str = std::string(cs_reg_name(handle, op0.reg)) + std::string(", ") + std::string(pre) + std::string("[vrip") + std::string(buff) + std::string("]");
									printf("%llx %s %s\n", bb[i].address, insn->mnemonic,str.c_str() );


									cs_free(ins, cou);


								}

							}
							else
							{


								auto s = opers.size();
								for (auto t = y; t < ret.size(); t++)
								{
				

									if (opers[s - 1].address == bb[ret[t]].address)
									{

										ret_use.push_back(ret[t]);
										s--;
									}
									else {

										ret_use.push_back(ret[t]);

									}



								}


							}


							




							//print_indexs(bb, ret_use);



							{

								std::string str = "(mov|add|adc|or|xor).*,.*\\[.*" + std::string(cs_reg_name(handle, vm.v_rip.u)) + ".*\\]";

								std::regex reg1(str);

								std::vector<std::regex> regs;

								regs.push_back(reg1);

								std::vector<ULONG64> ret_indexs;

								std::vector<ULONG64> ret;

								ret.push_back(ret_use[ret_use.size() - 1]);


								if (trace_match(bb, ret, regs, ret_indexs))
								{




									auto z = ret_use[ret_use.size() - 1];

									ret_use.pop_back();



									cs_insn* ins;

									char buf[16] = { 0 };

									uc_mem_read(uc, bb[z].address, buf, bb[z].ori_size);

									auto cou = cs_disasm(handle, (uint8*)buf, bb[z].ori_size, bb[z].address, 0, &ins);

									auto detail = ins->detail->x86;

									auto op0 = detail.operands[0];

									auto op1 = detail.operands[1];


									std::string pre = "";
									if (op1.size == 1)
										pre = "byte ptr ";
									else if (op1.size == 2)
										pre = "word ptr ";
									else if (op1.size == 4)
										pre = "dword ptr ";
									else if (op1.size == 8)
										pre = "qword ptr ";

									int value;

									if (op1.mem.base == vm.v_rip.u)
									{
										value = reg_get_value_by_id(bb[z].regs, op1.mem.index) * op1.mem.scale + op1.mem.disp;
									}
									else if (op1.mem.index == vm.v_rip.u)
									{
										value = reg_get_value_by_id(bb[z].regs, op1.mem.base) + op1.mem.disp;
									}

									char buff[0x10] = { 0 };
									value > 0 ? sprintf(buff, " + 0x%x", abs(value)) : value < 0 ? sprintf(buff, " - 0x%x", abs(value)) : sprintf(buff, "", value);

									std::string str = std::string(cs_reg_name(handle, op0.reg)) + std::string(", ") + std::string(pre) + std::string("[vrip") + std::string(buff) + std::string("]");
									printf("%llx %s %s\n", bb[i].address, insn->mnemonic, str.c_str());


									cs_free(ins, cou);


								}


							}


							std::reverse(ret_use.begin(), ret_use.end());

							std::reverse(opers.begin(), opers.end());

							auto s = opers.size();

							for (y = 0; y < ret_use.size(); y++) {


								cs_insn* ins;
								char buf[16] = { 0 };

								auto t = ret_use[y];

								if (s > 0) {


									if (bb[t].address == opers[s - 1].address)
									{


										auto z = t;

										cs_insn* ins;

										char buf[16] = { 0 };

										uc_mem_read(uc, bb[z].address, buf, bb[z].ori_size);

										auto cou = cs_disasm(handle, (uint8*)buf, bb[z].ori_size, bb[z].address, 0, &ins);

										auto detail = ins->detail->x86;

										auto op0 = detail.operands[0];

										auto op1 = detail.operands[1];


										std::string pre = "";
										if (op1.size == 1)
											pre = "byte ptr ";
										else if (op1.size == 2)
											pre = "word ptr ";
										else if (op1.size == 4)
											pre = "dword ptr ";
										else if (op1.size == 8)
											pre = "qword ptr ";


										if (opers[s - 1].type == BASIC_OPERATION_TYPE::R_REG_VIP || opers[s - 1].type == BASIC_OPERATION_TYPE::R_VREG_IMM || opers[s - 1].type == BASIC_OPERATION_TYPE::R_VREG_VIP)
										{


											std::string str = std::string(cs_reg_name(handle, op0.reg)) + std::string(", ") + std::string("[") + std::string("reg") + std::to_string(opers[s - 1].read_reg.reg_id / 8) + std::string("]");
											printf("%llx %s %s\n", bb[t].address, insn->mnemonic, str.c_str());


										}
										else if (opers[s - 1].type == BASIC_OPERATION_TYPE::R_STACK)
										{

											if (op1.type == X86_OP_MEM) {

												if (ins->id == X86_INS_LEA) {


													char buff[0x10] = { 0 };
													opers[s - 1].read_vsp.offset > 0 ? sprintf(buff, " + 0x%x", abs(opers[s - 1].read_vsp.offset)) : opers[s - 1].read_vsp.offset < 0 ? sprintf(buff, " - 0x%x", abs(opers[s - 1].read_vsp.offset)) : sprintf(buff, "", opers[s - 1].read_vsp.offset);
													
													std::string str = std::string(cs_reg_name(handle, op0.reg)) + std::string(", [")+std::string("vrsp") + std::string(buff) + std::string("]");
													printf("%llx %s %s\n", bb[t].address, "lea ", str.c_str());

												}
												else {

													std::string str = std::string(cs_reg_name(handle, op0.reg));
													printf("%llx %s %s\n", bb[t].address, "pop ", str.c_str());

												}


											}
											else {

												std::string str = std::string(cs_reg_name(handle, op0.reg)) + std::string("vrsp");
												printf("%llx %s %s\n", bb[t].address, "mov ", str.c_str());

											}

										

										}


										s--;

										cs_free(ins, cou);

										continue;
									}


								}

								

					
								uc_mem_read(uc, bb[t].address, buf, bb[t].ori_size);

								auto cou = cs_disasm(handle, (uint8*)buf, bb[t].ori_size, bb[t].address, 0, &ins);

								printf("%llx %s %s\n", bb[t].address, ins->mnemonic, ins->op_str);

								cs_free(ins, cou);
					
							}


							printf("%llx push %s\n",bb[i].address,cs_reg_name(handle, op1.reg));

						}



					}





					//W_STACK_FROM_IMM
					if (read_vip_byte)
					{
						if (8 == read_vip_size)
						{

							BASIC_OPERATION op = {BASIC_OPERATION_TYPE::W_STACK_FROM_IMM_VIP};
							op.address = bb[i].address;
							op.write_stack_from_imm_by_vip.value = reg_get_value_by_id(bb[i].regs, dt.operands[1].reg);
							op.write_stack_from_imm_by_vip.offset = offset;

							operates.push_back(op);
							read_vip_byte = false;
							read_vip_size = 0;
							begin = i +1;
							begin_operation = operates.size();
							break;
						}

					}

					if (read_reg && read_from_rsp) {




						auto ret = trace_titan(bb, i, op1.reg, X86_REG_RSP, vm.v_rip.u);

						if (ret.size())
						{

							std::reverse(ret.begin(), ret.end());



							std::regex reg1(R"(ad.*,.*)");

							//"mov .*,.*\\[.*\\]"  帮我改成 mov这个部分可以是or 或者 add adc



							std::regex reg2("(mov|add|adc|or) .*,.*\\[.*\\]");
							std::regex reg3("(mov|add|adc|or) .*,.*\\[.*\\]");


							std::vector<std::regex> regs;

							regs.push_back(reg1);
							regs.push_back(reg2);
							regs.push_back(reg3);

							std::vector<ULONG64> ret_indexs;

							if (trace_match(bb, ret, regs, ret_indexs)) {


								BASIC_OPERATION op = { BASIC_OPERATION_TYPE::W_STACK_FROM_ADD_REG_STACK };
								op.address = bb[i].address;
								op.write_stack.value = reg_get_value_by_id(bb[i].regs, dt.operands[1].reg);
								op.write_stack.offset = offset;


								operates.push_back(op);


								read_reg = false;
								read_from_rsp = false;
								offset = 0;
								last_read_rsp_index = 0;
								last_read_reg_index = 0;
								begin = i +1;
								begin_operation = operates.size();
								break;
							}

						}

						




					}



					// W_STACK_FROM_REG
					if(read_reg)
					{

						

						BASIC_OPERATION op = {BASIC_OPERATION_TYPE::W_STACK_FROM_REG_IMM, 1};
						if (read_reg_type == BASIC_OPERATION_TYPE::R_VREG_IMM) {

							op.type  = BASIC_OPERATION_TYPE::W_STACK_FROM_REG_IMM;

						}
						else if(read_reg_type == BASIC_OPERATION_TYPE::R_VREG_VIP) {
							op.type = BASIC_OPERATION_TYPE::W_STACK_FROM_REG_VIP;

						}

						op.address = bb[i].address;

						std::vector<ULONG64> ret_indexs;

						if(r_vreg_offset(bb,ret,op,ret_indexs)) {


							op.write_stack_from_reg_by_imm.reg_index = op.read_reg_offset.reg_id;
							op.write_stack_from_reg_by_imm.value = reg_get_value_by_id(bb[i].regs, dt.operands[1].reg);
							op.write_stack_from_reg_by_imm.offset = offset;

							operates.push_back(op);

							read_reg = false;
							read_reg_type = -1;

							begin = i +1;
							begin_operation = operates.size();
							break;
						}


				
					}

					// W_STACK_FROM_ADC_STACK_STACK
					{

						std::regex reg1(R"(ad.*,.*)");
						std::regex reg2("mov .*,.*\\[.*" + std::string(cs_reg_name(handle, vm.v_rsp.u)) + ".*\\]");
						std::regex reg3("mov .*,.*\\[.*" + std::string(cs_reg_name(handle, vm.v_rsp.u)) + ".*\\]");

						std::vector<std::regex> regs;
						regs.push_back(reg1);
						regs.push_back(reg2);
						regs.push_back(reg2);
						std::vector<ULONG64> ret_indexs;

						if (trace_match(bb, ret, regs, ret_indexs))
						{

							BASIC_OPERATION op = {BASIC_OPERATION_TYPE::W_STACK_FROM_ADC_STACK_STACK};
							op.address = bb[i].address;
							op.write_stack_adc_stack_stack.offset = offset;
							auto z1 = ret_indexs[1];
							auto z2 = ret_indexs[2];

							cs_insn *ins1;
							cs_insn *ins2;

							char buf[16] = {0};

							uc_mem_read(uc, bb[z1].address, buf, bb[z1].ori_size);

							auto cou1 = cs_disasm(handle, (uint8 *)buf, bb[z1].ori_size, bb[z1].address, 0, &ins1);
							uc_mem_read(uc, bb[z2].address, buf, bb[z2].ori_size);

							auto cou2 = cs_disasm(handle, (uint8 *)buf, bb[z2].ori_size, bb[z2].address, 0, &ins2);

							op.write_stack_adc_stack_stack.value1_offset = ins1->detail->x86.operands[1].mem.base == vm.v_rsp.u ? reg_get_value_by_id(bb[z1].regs, ins1->detail->x86.operands[1].mem.index) * ins1->detail->x86.operands[1].mem.scale + ins1->detail->x86.operands[1].mem.disp : reg_get_value_by_id(bb[z1].regs, ins1->detail->x86.operands[1].mem.base) + ins1->detail->x86.operands[1].mem.disp;
							op.write_stack_adc_stack_stack.value2_offset = ins2->detail->x86.operands[1].mem.base == vm.v_rsp.u ? reg_get_value_by_id(bb[z2].regs, ins2->detail->x86.operands[1].mem.index) * ins2->detail->x86.operands[1].mem.scale + ins2->detail->x86.operands[1].mem.disp : reg_get_value_by_id(bb[z2].regs, ins2->detail->x86.operands[1].mem.base) + ins2->detail->x86.operands[1].mem.disp;

							op.write_stack_adc_stack_stack.offset = offset;
							op.write_stack_adc_stack_stack.value = reg_get_value_by_id(bb[i].regs, dt.operands[1].reg);

							operates.push_back(op);
							cs_free(ins1, cou1);
							cs_free(ins2, cou2);
							read_from_rsp = false;
							begin = i +1;
							begin_operation = operates.size();
							break;
						}
					}

					// W_STACK_FROM_LEA_STACK
					{
						BASIC_OPERATION op = {BASIC_OPERATION_TYPE::W_STACK_FROM_LEA_STACK};
						op.address = bb[i].address;
						op.write_stack_lea_stack.offset = offset;

						{
							std::string str = "lea .*,.*\\[.*" + std::string(cs_reg_name(handle, vm.v_rsp.u)) + ".*\\]";
							std::regex reg1(str);

							std::vector<std::regex> regs;
							regs.push_back(reg1);

							std::vector<ULONG64> ret_indexs;

							if (trace_match(bb, ret, regs, ret_indexs))
							{

								auto z = ret_indexs[0];

								cs_insn *ins;
								char buf[16] = {0};

								uc_mem_read(uc, bb[z].address, buf, bb[z].ori_size);

								auto cou = cs_disasm(handle, (uint8 *)buf, bb[z].ori_size, bb[z].address, 0, &ins);

								auto detail = ins->detail->x86;
								auto op0 = detail.operands[0];
								auto op1 = detail.operands[1];

								if (op1.mem.base == vm.v_rsp.u)
								{
									op.write_stack_lea_stack.value_offset = reg_get_value_by_id(bb[z].regs, op1.mem.index) * op1.mem.scale + op1.mem.disp;
								}

								if (op1.mem.index == vm.v_rsp.u)
								{
									op.write_stack_lea_stack.value_offset = reg_get_value_by_id(bb[z].regs, op1.mem.base) + op1.mem.disp;
								}

								op.write_stack_lea_stack.value = reg_get_value_by_id(bb[i].regs, dt.operands[1].reg);

								operates.push_back(op);
								cs_free(ins, cou);
								begin = i +1;
								begin_operation = operates.size();
								break;
							}
						}

						{
							std::string str = "mov .*,.*" + std::string(cs_reg_name(handle, vm.v_rsp.u)) + ".*";
							std::regex reg1(str);

							std::vector<std::regex> regs;
							regs.push_back(reg1);

							std::vector<ULONG64> ret_indexs;

							if (trace_match(bb, ret, regs, ret_indexs))
							{

								auto z = ret_indexs[0];

								cs_insn *ins;
								char buf[16] = {0};

								uc_mem_read(uc, bb[z].address, buf, bb[z].ori_size);

								auto cou = cs_disasm(handle, (uint8 *)buf, bb[z].ori_size, bb[z].address, 0, &ins);

								auto detail = ins->detail->x86;
								auto op0 = detail.operands[0];
								auto op1 = detail.operands[1];

								op.write_stack_lea_stack.value_offset = 0;

								op.write_stack_lea_stack.value = reg_get_value_by_id(bb[i].regs, dt.operands[1].reg);

								operates.push_back(op);
								cs_free(ins, cou);
								begin = i +1;
								begin_operation = operates.size();
								break;
							}
						}
					}


					BASIC_OPERATION op = { BASIC_OPERATION_TYPE::W_STACK_FROM_UNKNOW, 1 };
					op.address = bb[i].address;
					op.write_stack_from_reg_by_imm.offset = offset;











					operates.push_back(op);
					begin = i + 1;

				} while (0);
			}

			// read vip
			if (op0.type == X86_OP_REG && op1.type == X86_OP_MEM)
			{

				if (op0.reg != vm.v_rip.u && (op1.mem.base == vm.v_rip.u || op1.mem.index == vm.v_rip.u))
				{

					if (read_vip_byte)
					{

						BASIC_OPERATION op = {BASIC_OPERATION_TYPE::R_STREAM_UNUSED, 1};
						op.address = bb[last_read_vip_index].address;

						operates.push_back(op);
						read_vip_byte = false;
						read_vip_size = 0;
					}

					BASIC_OPERATION op = {BASIC_OPERATION_TYPE::R_STREAM, 1};
					op.address = bb[i].address;
					op.read_vip.size = op1.size;

					if (op1.mem.base == vm.v_rip.u)
						op.read_vip.offset = reg_get_value_by_id(bb[i].regs, op1.mem.index) * op1.mem.scale + op1.mem.disp;
					else if (op1.mem.index == vm.v_rip.u)
						op.read_vip.offset = reg_get_value_by_id(bb[i].regs, op1.mem.base) + op1.mem.disp;

					if (op1.size == 1 || op1.size == 2 || op1.size == 8)
					{
						read_vip_size = op1.size;
						read_vip_byte = true;
						last_read_vip_index = i;
					}

					operates.push_back(op);
				}
			}

			// write vip
			if (op0.type == X86_OP_REG && op0.reg == vm.v_rip.u)
			{

				BASIC_OPERATION op = {BASIC_OPERATION_TYPE::C_VIP, 1};
				op.address = bb[i].address;
				op.change_vip.step = reg_get_value_by_id(bb[i + 1].regs, (x86_reg)vm.v_rip.u) - reg_get_value_by_id(bb[i].regs, (x86_reg)vm.v_rip.u);
				operates.push_back(op);
			}
		}

		// lea rsp, [rsp + *]
		//  ret;

		if (insn->id == X86_INS_RET)
		{

			std::regex reg1(R"(lea rsp.*,.*\[.*rsp.*\])");
			std::regex reg2(R"(.*ret.*)");
			std::vector<std::regex> regs;
			regs.push_back(reg2);
			regs.push_back(reg1);
			std::vector<ULONG64> ret;
			ret.push_back(i);
			ret.push_back(i - 1);
			std::vector<ULONG64> ret_indexs;
			if (trace_match(bb, ret, regs, ret_indexs))
			{

				BASIC_OPERATION op = {BASIC_OPERATION_TYPE::VRET, 1};
				op.address = bb[i].address;
				ULONG64 ret_address = 0;
				uc_mem_read(uc, reg_get_value_by_id(bb[i].regs, X86_REG_RSP), &ret_address, 8);
				op.vret.ret_address = ret_address;
				operates.push_back(op);
			}
		}



		// R_REG_OFFSET
		// lea xxx,[rsp + *]
		// adc xxx,rsp
		// add xxx,rsp
		{

				std::vector<ULONG64> ret;
				std::vector<ULONG64> ret_indexs;
				BASIC_OPERATION op = { BASIC_OPERATION_TYPE::R_VREG_OFFSET };
				ret.push_back(i);

				if (r_vreg_offset(bb, ret, op, ret_indexs))
				{

					if (read_vip_byte) {


						if (read_vip_size == 1 || read_vip_size == 2)
							op.type = BASIC_OPERATION_TYPE::R_VREG_OFFSET_VIP;



						read_vip_byte = false;
						read_vip_size = 0;
					}
					else {
						op.type = BASIC_OPERATION_TYPE::R_VREG_OFFSET_IMM;
					}

					op.read_reg_offset.reg_id = op.read_reg_offset.reg_id;
					op.address = bb[i].address;

					operates.push_back(op);
					read_vcontext_offset = true;

					read_vcontext_reg_id = dt.operands[0].reg;

					read_vcontext_offset_type = op.type;


				}

		}


		// R_REG
		if (read_vcontext_offset)
		{

			
			do
			{
			{



				std::string str = "(mov|add|adc|or|xor).*,.*\\[.*" + std::string(cs_reg_name(handle, read_vcontext_reg_id)) + ".*\\]";

				std::regex reg1(str);

				std::vector<std::regex> regs;

				regs.push_back(reg1);

				std::vector<ULONG64> ret_indexs;

				std::vector<ULONG64> ret;

				ret.push_back(i);

				if (trace_match(bb, ret, regs, ret_indexs))
				{

					auto z = ret_indexs[0];

					cs_insn *ins;
					char buf[16] = {0};

					uc_mem_read(uc, bb[z].address, buf, bb[z].ori_size);

					auto cou = cs_disasm(handle, (uint8 *)buf, bb[z].ori_size, bb[z].address, 0, &ins);

					auto detail = ins->detail->x86;
					auto op0 = detail.operands[0];
					auto op1 = detail.operands[1];

					BASIC_OPERATION op = {BASIC_OPERATION_TYPE::R_VREG};

					if (read_vcontext_offset_type == BASIC_OPERATION_TYPE::R_VREG_OFFSET_VIP)
					{
						op.type = BASIC_OPERATION_TYPE::R_VREG_VIP;
						read_vcontext_offset_type = -1;
					}


					else if (read_vcontext_offset_type == BASIC_OPERATION_TYPE::R_VREG_OFFSET_IMM)
					{
						op.type = BASIC_OPERATION_TYPE::R_VREG_IMM;
						read_vcontext_offset_type = -1;

					}

					op.address = bb[z].address;

					if (op1.mem.base == read_vcontext_reg_id)
					{

						op.read_reg.reg_id = reg_get_value_by_id(bb[z].regs, (x86_reg)read_vcontext_reg_id) - vm.v_context.u + reg_get_value_by_id(bb[z].regs, op1.mem.index) * op1.mem.scale + op1.mem.disp;
					}
					else if (op1.mem.index == read_vcontext_reg_id)
					{

						op.read_reg.reg_id = reg_get_value_by_id(bb[z].regs, (x86_reg)read_vcontext_reg_id) - vm.v_context.u + reg_get_value_by_id(bb[z].regs, op1.mem.base) + op1.mem.disp;
					}

					op.read_reg.value = reg_get_value_by_id(bb[z + 1].regs, op0.reg);

					read_vcontext_offset = false;

					read_vcontext_reg_id = 0;

					read_reg = true;

					read_reg_type = op.type;

					last_read_reg_index = i;

					operates.push_back(op);

					cs_free(ins, cou);

					break;
				}
			}


			 }while (0);
		}


		// W_REG
		if (read_vcontext_offset)
		{

			

			std::string str = "(mov|add|adc|or) .*\\[.*" + std::string(cs_reg_name(handle, read_vcontext_reg_id)) + ".*\\],.*";

			std::regex reg1(str);

			std::vector<std::regex> regs;

			regs.push_back(reg1);

			std::vector<ULONG64> ret_indexs;

			std::vector<ULONG64> ret;

			ret.push_back(i);

			if (trace_match(bb, ret, regs, ret_indexs))
			{


				do {



					{
						auto ret = trace_titan(bb, i, begin, op1.reg, X86_REG_RSP, vm.v_rip.u);

						std::reverse(ret.begin(), ret.end());


						if (ret.size())
						{

							std::vector<BASIC_OPERATION> opers;

							for (auto d = begin_operation; d < operates.size(); d++)
							{
								if (operates[d].type == R_REG_VIP || operates[d].type == R_VREG_IMM || operates[d].type == R_VREG_VIP || operates[d].type == R_STACK)
								{
									opers.push_back(operates[d]);
								}

							}

							std::vector<ULONG64> ret_use;
							auto y = 0;
							for (; y < ret.size(); y++)
							{
								auto t = ret[y];
								//如果bb[t].address == opers[opers.size() - 1].address

								if (opers.size() >= 1) {

									if (bb[t].address == opers[opers.size() - 1].address)
									{
										break;
									}

								}


								ret_use.push_back(t);


							}


							if (opers.size() == 0)
							{

								std::string str = "(mov|add|adc|or|xor).*,.*\\[.*" + std::string(cs_reg_name(handle, vm.v_rip.u)) + ".*\\]";

								std::regex reg1(str);

								std::vector<std::regex> regs;

								regs.push_back(reg1);

								std::vector<ULONG64> ret_indexs;

								std::vector<ULONG64> ret;

								ret.push_back(ret_use[ret_use.size() - 1]);

								if (trace_match(bb, ret, regs, ret_indexs))
								{

									ret_use.pop_back();



									auto z = ret_use[ret_use.size() - 1];

									cs_insn* ins;

									char buf[16] = { 0 };

									uc_mem_read(uc, bb[z].address, buf, bb[z].ori_size);

									auto cou = cs_disasm(handle, (uint8*)buf, bb[z].ori_size, bb[z].address, 0, &ins);

									auto detail = ins->detail->x86;

									auto op0 = detail.operands[0];

									auto op1 = detail.operands[1];


									std::string pre = "";
									if (op1.size == 1)
										pre = "byte ptr ";
									else if (op1.size == 2)
										pre = "word ptr ";
									else if (op1.size == 4)
										pre = "dword ptr ";
									else if (op1.size == 8)
										pre = "qword ptr ";

									int value;

									if (op1.mem.base == vm.v_rip.u)
									{
										value = reg_get_value_by_id(bb[z].regs, op1.mem.index) * op1.mem.scale + op1.mem.disp;
									}
									else if (op1.mem.index == vm.v_rip.u)
									{
										value = reg_get_value_by_id(bb[z].regs, op1.mem.base) + op1.mem.disp;
									}

									char buff[0x10] = { 0 };
									value > 0 ? sprintf(buff, " + 0x%x", abs(value)) : value < 0 ? sprintf(buff, " - 0x%x", abs(value)) : sprintf(buff, "", value);

									std::string str = std::string(cs_reg_name(handle, op0.reg)) + std::string(", ") + std::string(pre) + std::string("[vrip") + std::string(buff) + std::string("]");
									printf("%llx %s %s\n", bb[i].address, insn->mnemonic, str.c_str());


									cs_free(ins, cou);


								}

							}
							else
							{


								auto s = opers.size();
								for (auto t = y; t < ret.size(); t++)
								{
									if (s == 0)
										break;

									if (opers[s - 1].address == bb[ret[t]].address)
									{

										ret_use.push_back(ret[t]);
										s--;
									}
									else {

										ret_use.push_back(ret[t]);

									}



								}


							}







							//print_indexs(bb, ret_use);


							{

								std::string str = "(mov|add|adc|or|xor).*,.*\\[.*" + std::string(cs_reg_name(handle, vm.v_rip.u)) + ".*\\]";

								std::regex reg1(str);

								std::vector<std::regex> regs;

								regs.push_back(reg1);

								std::vector<ULONG64> ret_indexs;

								std::vector<ULONG64> ret;

								ret.push_back(ret_use[ret_use.size() - 1]);

								if (trace_match(bb, ret, regs, ret_indexs))
								{




									auto z = ret_use[ret_use.size() - 1];

									ret_use.pop_back();


									cs_insn* ins;

									char buf[16] = { 0 };

									uc_mem_read(uc, bb[z].address, buf, bb[z].ori_size);

									auto cou = cs_disasm(handle, (uint8*)buf, bb[z].ori_size, bb[z].address, 0, &ins);

									auto detail = ins->detail->x86;

									auto op0 = detail.operands[0];

									auto op1 = detail.operands[1];


									std::string pre = "";
									if (op1.size == 1)
										pre = "byte ptr ";
									else if (op1.size == 2)
										pre = "word ptr ";
									else if (op1.size == 4)
										pre = "dword ptr ";
									else if (op1.size == 8)
										pre = "qword ptr ";

									int value;

									if (op1.mem.base == vm.v_rip.u)
									{
										value = reg_get_value_by_id(bb[z].regs, op1.mem.index) * op1.mem.scale + op1.mem.disp;
									}
									else if (op1.mem.index == vm.v_rip.u)
									{
										value = reg_get_value_by_id(bb[z].regs, op1.mem.base) + op1.mem.disp;
									}

									char buff[0x10] = { 0 };
									value > 0 ? sprintf(buff, " + 0x%x", abs(value)) : value < 0 ? sprintf(buff, " - 0x%x", abs(value)) : sprintf(buff, "", value);

									std::string str = std::string(cs_reg_name(handle, op0.reg)) + std::string(", ") + std::string(pre) + std::string("[vrip") + std::string(buff) + std::string("]");
									printf("%llx %s %s\n", bb[i].address, insn->mnemonic, str.c_str());


									cs_free(ins, cou);


								}


							}

							std::reverse(ret_use.begin(), ret_use.end());

							std::reverse(opers.begin(), opers.end());

							auto s = opers.size();

							for (y = 0; y < ret_use.size(); y++) {


								cs_insn* ins;
								char buf[16] = { 0 };

								auto t = ret_use[y];

								if (s > 0) {


									if (bb[t].address == opers[s - 1].address)
									{


										auto z = t;

										cs_insn* ins;

										char buf[16] = { 0 };

										uc_mem_read(uc, bb[z].address, buf, bb[z].ori_size);

										auto cou = cs_disasm(handle, (uint8*)buf, bb[z].ori_size, bb[z].address, 0, &ins);

										auto detail = ins->detail->x86;

										auto op0 = detail.operands[0];

										auto op1 = detail.operands[1];


										std::string pre = "";
										if (op1.size == 1)
											pre = "byte ptr ";
										else if (op1.size == 2)
											pre = "word ptr ";
										else if (op1.size == 4)
											pre = "dword ptr ";
										else if (op1.size == 8)
											pre = "qword ptr ";


										if (opers[s - 1].type == BASIC_OPERATION_TYPE::R_REG_VIP || opers[s - 1].type == BASIC_OPERATION_TYPE::R_VREG_IMM || opers[s - 1].type == BASIC_OPERATION_TYPE::R_VREG_VIP)
										{


											std::string str = std::string(cs_reg_name(handle, op0.reg)) + std::string(", ") + std::string("[") + std::string("reg") + std::to_string(opers[s - 1].read_reg.reg_id / 8) + std::string("]");
											printf("%llx %s %s\n", bb[t].address, insn->mnemonic, str.c_str());


										}
										else if (opers[s - 1].type == BASIC_OPERATION_TYPE::R_STACK)
										{


											if (op1.type == X86_OP_MEM) {

												if (ins->id == X86_INS_LEA) {


													char buff[0x10] = { 0 };
													opers[s - 1].read_vsp.offset > 0 ? sprintf(buff, " + 0x%x", abs(opers[s - 1].read_vsp.offset)) : opers[s - 1].read_vsp.offset < 0 ? sprintf(buff, " - 0x%x", abs(opers[s - 1].read_vsp.offset)) : sprintf(buff, "", opers[s - 1].read_vsp.offset);

													std::string str = std::string(cs_reg_name(handle, op0.reg)) + std::string(", [") + std::string("vrsp") + std::string(buff) + std::string("]");
													printf("%llx %s %s\n", bb[t].address, "lea ", str.c_str());

												}
												else {

													std::string str = std::string(cs_reg_name(handle, op0.reg));
													printf("%llx %s %s\n", bb[t].address, "pop ", str.c_str());

												}


											}
											else {

												std::string str = std::string(cs_reg_name(handle, op0.reg)) + std::string("vrsp");
												printf("%llx %s %s\n", bb[t].address, "mov ", str.c_str());

											}

										}


										s--;

										cs_free(ins, cou);

										continue;
									}


								}




								uc_mem_read(uc, bb[t].address, buf, bb[t].ori_size);

								auto cou = cs_disasm(handle, (uint8*)buf, bb[t].ori_size, bb[t].address, 0, &ins);

								printf("%llx %s %s\n", bb[t].address, ins->mnemonic, ins->op_str);

								cs_free(ins, cou);

							}






							auto z = ret_indexs[0];

							cs_insn* ins;
							char buf[16] = { 0 };

							uc_mem_read(uc, bb[z].address, buf, bb[z].ori_size);

							auto cou = cs_disasm(handle, (uint8*)buf, bb[z].ori_size, bb[z].address, 0, &ins);

							auto detail = ins->detail->x86;
							auto op0 = detail.operands[0];
							auto op1 = detail.operands[1];

							auto value = 0;

							if (op0.mem.base == read_vcontext_reg_id)
							{

								value = reg_get_value_by_id(bb[z].regs, (x86_reg)read_vcontext_reg_id) - vm.v_context.u + reg_get_value_by_id(bb[z].regs, op0.mem.index) * op0.mem.scale + op0.mem.disp;
							}
							else if (op0.mem.index == read_vcontext_reg_id)
							{

								value = reg_get_value_by_id(bb[z].regs, (x86_reg)read_vcontext_reg_id) - vm.v_context.u + reg_get_value_by_id(bb[z].regs, op0.mem.base) + op0.mem.disp;
							}





							printf("%llx mov reg%d, %s\n", bb[i].address, value/8,cs_reg_name(handle, op1.reg));


							cs_free(ins, cou);


						}



					}











					// W_REG_VIP_FROM_ADD_REG_STACK
					if (read_reg && read_from_rsp) {

	
						int z = last_read_reg_index > last_read_rsp_index ? last_read_rsp_index : last_read_reg_index;

						auto ret = trace_titan(bb, i, op1.reg, X86_REG_RSP, vm.v_rip.u);

						if (ret.size())
						{

							std::reverse(ret.begin(), ret.end());



							std::regex reg1(R"(ad.*,.*)");

							//"mov .*,.*\\[.*\\]"  帮我改成 mov这个部分可以是or 或者 add adc

						

							std::regex reg2("(mov|add|adc|or) .*,.*\\[.*\\]");
							std::regex reg3("(mov|add|adc|or) .*,.*\\[.*\\]");


							std::string str1 = "add rax,[rsp+10]";

							if(std::regex_match(str1, reg2)) {

								printf("match\n");
							}

							std::vector<std::regex> regs;

							regs.push_back(reg1);
							regs.push_back(reg2);
							regs.push_back(reg3);

							std::vector<ULONG64> ret_indexs;

							if (trace_match(bb, ret, regs, ret_indexs)) {

								BASIC_OPERATION op = { BASIC_OPERATION_TYPE::W_REG_VIP_FROM_ADD_REG_STACK };
								op.address = bb[i].address;
								op.write_reg.value = reg_get_value_by_id(bb[i].regs, dt.operands[1].reg);


								if (read_vcontext_offset_type == BASIC_OPERATION_TYPE::R_VREG_OFFSET_VIP)
								{
									op.type = BASIC_OPERATION_TYPE::W_REG_VIP_FROM_ADD_REG_STACK;
									read_vcontext_offset_type = -1;
								}


								else if (read_vcontext_offset_type == BASIC_OPERATION_TYPE::R_VREG_OFFSET_IMM)
								{
									op.type = BASIC_OPERATION_TYPE::W_REG_IMM_FROM_ADD_REG_STACK;
									read_vcontext_offset_type = -1;

								}

								if (op0.mem.base == read_vcontext_reg_id)
								{

									op.write_reg.reg_id = reg_get_value_by_id(bb[i].regs, (x86_reg)read_vcontext_reg_id) - vm.v_context.u + reg_get_value_by_id(bb[i].regs, op0.mem.index) * op0.mem.scale + op0.mem.disp;
								}
								else if (op0.mem.index == read_vcontext_reg_id)
								{

									op.write_reg.reg_id = reg_get_value_by_id(bb[i].regs, (x86_reg)read_vcontext_reg_id) - vm.v_context.u + reg_get_value_by_id(bb[i].regs, op0.mem.base) + op0.mem.disp;
								}



								operates.push_back(op);

								read_vcontext_offset = false;

								read_vcontext_reg_id = 0;
								read_reg = false;
								read_from_rsp = false;
								offset = 0;
								last_read_rsp_index = 0;
								last_read_reg_index = 0;
								begin = i +1;
								begin_operation = operates.size();
								break;
							}

						}
							

						

		
					
					}


					// W_REG_VIP_FROM_REG
					if (read_reg) {



						BASIC_OPERATION op = { BASIC_OPERATION_TYPE::W_REG_VIP_FROM_REG, 1 };
						op.address = bb[i].address;
						op.write_reg_from_reg_by_vip.value = reg_get_value_by_id(bb[i].regs, dt.operands[1].reg);
						
						if (read_vcontext_offset_type == BASIC_OPERATION_TYPE::R_VREG_OFFSET_VIP)
						{
							op.type = BASIC_OPERATION_TYPE::W_REG_VIP_FROM_REG;
							read_vcontext_offset_type = -1;
						}


						else if (read_vcontext_offset_type == BASIC_OPERATION_TYPE::R_VREG_OFFSET_IMM)
						{
							op.type = BASIC_OPERATION_TYPE::W_REG_IMM_FROM_REG;
							read_vcontext_offset_type = -1;

						}


						if (op0.mem.base == read_vcontext_reg_id)
						{

							op.write_reg.reg_id = reg_get_value_by_id(bb[i].regs, (x86_reg)read_vcontext_reg_id) - vm.v_context.u + reg_get_value_by_id(bb[i].regs, op0.mem.index) * op0.mem.scale + op0.mem.disp;
						}
						else if (op0.mem.index == read_vcontext_reg_id)
						{

							op.write_reg.reg_id = reg_get_value_by_id(bb[i].regs, (x86_reg)read_vcontext_reg_id) - vm.v_context.u + reg_get_value_by_id(bb[i].regs, op0.mem.base) + op0.mem.disp;
						}

						read_vcontext_offset = false;

						read_vcontext_reg_id = 0;

						int read_reg_type = -1;

						read_reg = false;

						operates.push_back(op);

						begin = i +1;
						begin_operation = operates.size();
						break;
					}

					// W_REG_VIP_FROM_STACK
					if (read_from_rsp) {


						BASIC_OPERATION op = { BASIC_OPERATION_TYPE::W_REG_VIP_FROM_STACK, 1 };
						op.address = bb[i].address;
						op.write_reg_from_stack_by_vip.value = reg_get_value_by_id(bb[i].regs, dt.operands[1].reg);
						op.write_reg_from_stack_by_vip.offset = offset;
						if (read_vcontext_offset_type == BASIC_OPERATION_TYPE::R_VREG_OFFSET_VIP)
						{
							op.type = BASIC_OPERATION_TYPE::W_REG_VIP_FROM_STACK;
							read_vcontext_offset_type = -1;
						}


						else if (read_vcontext_offset_type == BASIC_OPERATION_TYPE::R_VREG_OFFSET_IMM)
						{
							op.type = BASIC_OPERATION_TYPE::W_REG_IMM_FROM_STACK;
							read_vcontext_offset_type = -1;

						}


						if (op0.mem.base == read_vcontext_reg_id)
						{

							op.write_reg.reg_id = reg_get_value_by_id(bb[i].regs, (x86_reg)read_vcontext_reg_id) - vm.v_context.u + reg_get_value_by_id(bb[i].regs, op0.mem.index) * op0.mem.scale + op0.mem.disp;
						}
						else if (op0.mem.index == read_vcontext_reg_id)
						{

							op.write_reg.reg_id = reg_get_value_by_id(bb[i].regs, (x86_reg)read_vcontext_reg_id) - vm.v_context.u + reg_get_value_by_id(bb[i].regs, op0.mem.base) + op0.mem.disp;
						}

						read_vcontext_offset = false;

						read_vcontext_reg_id = 0;

						read_from_rsp = 0;

						offset = 0;

						operates.push_back(op);

						begin = i + 1;
						begin_operation = operates.size();

						if (!vm.isEnterFinish)
						{

							if (vm.vrsp.size())
							{

								auto it = operates[operates.size() - 1];
								auto ba = vm.vrsp.back();
								vm.vrsp.pop_back();
								vm.vcontext[it.write_reg_from_stack_by_imm.reg_index / 8] = ba;
							}

							if (!vm.vrsp.size())
							{
								vm.isEnterFinish = true;
								printf("==================================\n");
								printf("mapping regs finish\n");
								for (auto d = 0; d < 100; d++)
								{
									if (vm.vcontext[d] != 0)
									{
										printf("%d %s\n", d, cs_reg_name(handle, vm.vcontext[d]));
									}
								}
							}
						}

						break;

					}


					auto z = ret_indexs[0];

					cs_insn* ins;
					char buf[16] = { 0 };

					uc_mem_read(uc, bb[z].address, buf, bb[z].ori_size);

					auto cou = cs_disasm(handle, (uint8*)buf, bb[z].ori_size, bb[z].address, 0, &ins);

					auto detail = ins->detail->x86;
					auto op0 = detail.operands[0];
					auto op1 = detail.operands[1];

					BASIC_OPERATION op = { BASIC_OPERATION_TYPE::W_VREG };

					if (read_vcontext_offset_type == BASIC_OPERATION_TYPE::R_VREG_OFFSET_VIP)
					{
						op.type = BASIC_OPERATION_TYPE::W_VREG_VIP;
						read_vcontext_offset_type = -1;
					}


					else if (read_vcontext_offset_type == BASIC_OPERATION_TYPE::R_VREG_OFFSET_IMM)
					{
						op.type = BASIC_OPERATION_TYPE::W_VREG_IMM;
						read_vcontext_offset_type = -1;

					}


					op.address = bb[i].address;

					if (op0.mem.base == read_vcontext_reg_id)
					{

						op.write_reg.reg_id = reg_get_value_by_id(bb[z].regs, (x86_reg)read_vcontext_reg_id) - vm.v_context.u + reg_get_value_by_id(bb[z].regs, op0.mem.index) * op0.mem.scale + op0.mem.disp;
					}
					else if (op0.mem.index == read_vcontext_reg_id)
					{

						op.write_reg.reg_id = reg_get_value_by_id(bb[z].regs, (x86_reg)read_vcontext_reg_id) - vm.v_context.u + reg_get_value_by_id(bb[z].regs, op0.mem.base) + op0.mem.disp;
					}

					op.write_reg.value = reg_get_value_by_id(bb[z].regs, op1.reg);

					read_vcontext_offset = false;

					read_vcontext_reg_id = 0;

					operates.push_back(op);

					begin = i + 1;

					begin_operation = operates.size();
					cs_free(ins, cou);



				} while (0);

			}
		}



		// W_VBASE
		{


				
			if (op0.reg == vm.v_base.u && insn->id != X86_INS_JMP) {


				//printf("123123\n");
				BASIC_OPERATION op = { BASIC_OPERATION_TYPE::W_VBASE };


				op.address = bb[i].address;

				operates.push_back(op);


				begin = i + 1;

				begin_operation = operates.size();



			}


		}



		cs_free(insn, count);
	}

	if (read_vip_byte)
	{

		BASIC_OPERATION op = {BASIC_OPERATION_TYPE::R_STREAM_UNUSED, 1};
		op.address = bb[last_read_vip_index].address;

		operates.push_back(op);
		read_vip_byte = false;
		read_vip_size = 0;
	}
	

	
	for (auto t : operates)
	{

		switch (t.type)
		{
		case BASIC_OPERATION_TYPE::R_STACK:
			printf("%llx R_STACK offset = %d\n", t.address, t.read_vsp.offset);
			break;
		case BASIC_OPERATION_TYPE::C_VSP:
			printf("%llx C_VSP step = %d\n", t.address, t.change_vsp.step);
			break;
		case BASIC_OPERATION_TYPE::W_REG_VIP_FROM_STACK:
			printf("%llx W_REG_VIP_FROM_STACK reg_id = %d value = %llx stack offset = %d\n", t.address, t.write_reg_from_stack_by_vip.reg_index / 8, t.write_reg_from_stack_by_vip.value, t.write_reg_from_stack_by_vip.offset);
			break;
		case BASIC_OPERATION_TYPE::W_REG_IMM_FROM_STACK:
			printf("%llx W_REG_IMM_FROM_STACK  reg_id = %d value = %llx  stack offset = %d\n", t.address, t.write_reg_from_stack_by_imm.reg_index / 8, t.write_reg_from_stack_by_imm.value, t.write_reg_from_stack_by_imm.offset);
			break;
		case BASIC_OPERATION_TYPE::R_STREAM:
			printf("%llx R_STREAM offset = %d size = %d\n", t.address, t.read_vip.offset, t.read_vip.size);
			break;
		case BASIC_OPERATION_TYPE::C_VIP:
			printf("%llx C_VIP step = %d\n", t.address, t.change_vip.step);
			break;
		case BASIC_OPERATION_TYPE::W_STACK_FROM_REG_VIP:
			printf("%llx W_STACK_FROM_REG_VIP reg_id = %d value = %llx  stack offset = %d\n", t.address, t.write_stack_from_reg_by_vip.reg_index / 8, t.write_stack_from_reg_by_vip.value, t.write_stack_from_reg_by_vip.offset);
			break;
		case BASIC_OPERATION_TYPE::W_STACK_FROM_REG_IMM:
			printf("%llx W_STACK_FROM_REG_IMM reg_id = %d value = %llx  stack offset = %d\n", t.address, t.write_stack_from_reg_by_imm.reg_index / 8, t.write_stack_from_reg_by_imm.value, t.write_stack_from_reg_by_imm.offset);
			break;
		case BASIC_OPERATION_TYPE::W_STACK_FROM_IMM_VIP:
			printf("%llx W_STACK_FROM_IMM_VIP value = %llx  stack offset = %d\n", t.address, t.write_stack_from_imm_by_vip.value, t.write_stack_from_imm_by_vip.offset);
			break;
		case BASIC_OPERATION_TYPE::W_STACK_FROM_UNKNOW:
			printf("%llx W_STACK_FROM_UNKNOW value = %llx   stack offset = %d\n", t.address, t.write_stack_from_imm_by_vip.value, t.write_stack_from_imm_by_vip.offset);
			break;
		case BASIC_OPERATION_TYPE::W_STACK_FROM_ADC_STACK_STACK:
			printf("%llx W_STACK_FROM_ADC_STACK_STACK value1_offset = %d value2_offset = %d value = %llx stack offset = %d\n", t.address, t.write_stack_adc_stack_stack.value1_offset, t.write_stack_adc_stack_stack.value2_offset, t.write_stack_adc_stack_stack.value, t.write_stack_adc_stack_stack.offset);
			break;
		case BASIC_OPERATION_TYPE::W_STACK_FROM_LEA_STACK:
			printf("%llx W_STACK_FROM_LEA_STACK value_offset = %d value = %llx stack offset = %d\n", t.address, t.write_stack_lea_stack.value_offset, t.write_stack_lea_stack.value, t.write_stack_lea_stack.offset);
			break;
		case BASIC_OPERATION_TYPE::W_STACK_FROM_ADD_REG_STACK:
			printf("%llx W_STACK_FROM_ADD_REG_STACK  value = %llx stack offset = %d\n", t.address ,t.write_stack.value, t.write_stack.offset);
			break;
			
		case BASIC_OPERATION_TYPE::VRET:
			printf("%llx VRET ret_address = %llx\n", t.address, t.vret.ret_address);
			break;
		case BASIC_OPERATION_TYPE::R_STREAM_UNUSED:
			printf("%llx R_STREAM_UNUSED\n", t.address);
			break;
		case BASIC_OPERATION_TYPE::R_VREG_OFFSET:
			printf("%llx R_VREG_OFFSET  reg_id = %d\n", t.address, t.read_reg_offset.reg_id/8);
			break;

		case BASIC_OPERATION_TYPE::R_VREG_OFFSET_VIP:
			printf("%llx R_VREG_OFFSET_VIP  reg_id = %d\n", t.address, t.read_reg_offset.reg_id/8);
			break;

		case BASIC_OPERATION_TYPE::R_VREG_OFFSET_IMM:
			printf("%llx R_VREG_OFFSET_IMM  reg_id = %d\n", t.address, t.read_reg_offset.reg_id/8);
			break;
		case BASIC_OPERATION_TYPE::R_REG_VIP:
			printf("%llx R_REG_VIP ret_id = %d value = %llx\n", t.address, t.read_reg_by_vip.reg_id / 8, t.read_reg_by_vip.value);
			break;

		case BASIC_OPERATION_TYPE::W_REG_VIP_FROM_REG:
			printf("%llx W_REG_VIP_FROM_REG ret_id = %d value = %llx\n", t.address, t.write_reg_from_reg_by_vip.reg_id / 8, t.write_reg_from_reg_by_vip.value);
			break;
		case BASIC_OPERATION_TYPE::W_REG_IMM_FROM_REG:
			printf("%llx W_REG_IMM_FROM_REG ret_id = %d value = %llx\n", t.address, t.write_reg_from_reg_by_vip.reg_id / 8, t.write_reg_from_reg_by_vip.value);
			break;
		case BASIC_OPERATION_TYPE::R_VREG:
			printf("%llx R_VREG ret_id = %d value = %llx\n", t.address, t.read_reg.reg_id / 8, t.read_reg.value);
			break;
		case BASIC_OPERATION_TYPE::R_VREG_VIP:
			printf("%llx R_VREG_VIP ret_id = %d value = %llx\n", t.address, t.read_reg.reg_id / 8, t.read_reg.value);
			break;

		case BASIC_OPERATION_TYPE::R_VREG_IMM:
			printf("%llx R_VREG_IMM ret_id = %d value = %llx\n", t.address, t.read_reg.reg_id / 8, t.read_reg.value);
			break;
		case BASIC_OPERATION_TYPE::W_VREG:
			printf("%llx W_VREG ret_id = %d value = %llx\n", t.address, t.write_reg.reg_id / 8, t.write_reg.value);
			break;

		case BASIC_OPERATION_TYPE::W_VREG_VIP:
			printf("%llx W_VREG_VIP ret_id = %d value = %llx\n", t.address, t.write_reg.reg_id / 8, t.write_reg.value);
			break;

		case BASIC_OPERATION_TYPE::W_VREG_IMM:
			printf("%llx W_VREG_IMM ret_id = %d value = %llx\n", t.address, t.write_reg.reg_id / 8, t.write_reg.value);
			break;

		case BASIC_OPERATION_TYPE::W_REG_VIP_FROM_ADD_REG_STACK:
			printf("%llx W_REG_VIP_FROM_ADD_REG_STACK ret_id = %d value = %llx\n", t.address, t.write_reg.reg_id / 8, t.write_reg.value);
			break;

		case BASIC_OPERATION_TYPE::W_REG_IMM_FROM_ADD_REG_STACK:
			printf("%llx W_REG_IMM_FROM_ADD_REG_STACK ret_id = %d value = %llx\n", t.address, t.write_reg.reg_id / 8, t.write_reg.value);
			break;
		case BASIC_OPERATION_TYPE::W_VBASE:
			printf("%llx W_VBASE \n", t.address);
			break;
			
		default:
			printf("unknow operation\n");
			break;
		}

		
	}
	
	



	printf("====================================\n");

	// std::cout << b << std::endl;

	return false;
}

#endif