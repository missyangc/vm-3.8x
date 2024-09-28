#pragma once


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


void test(basicblock bb) {

	triton::Context ctx;
	ctx.setArchitecture(triton::arch::ARCH_X86_64);

	auto ast = ctx.getAstContext();


	
	

	ast->variable(ctx.symbolizeRegister(ctx.getRegister("rax"), "rax"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("rbx"), "rbx"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("rcx"), "rcx"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("rdx"), "rdx"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("rsi"), "rsi"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("rdi"), "rdi"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("rbp"), "rbp"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("rsp"), "rsp"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("r8"), "r8"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("r9"), "r9"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("r10"), "r10"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("r11"), "r11"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("r12"), "r12"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("r13"), "r13"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("r14"), "r14"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("r15"), "r15"));
	ast->variable(ctx.symbolizeRegister(ctx.getRegister("rip"), "rip"));




	for (auto i = 0; i < bb.size(); i++) {


		auto ins = Instruction(bb[i].address, bb[i].buffer, bb[i].size);

		ctx.disassembly(ins);

		std::cout << ins << std::endl;


		ctx.processing(ins);

		if (bb[i].address == 0x140099c28)
			break;


	}






	auto r9s = ctx.getSymbolicRegister(ctx.getRegister("rax"));
	auto r9a = r9s->getAst();
	auto r9 = triton::ast::unroll(r9a);


	std::cout << r9 << std::endl;

	ctx.liftToLLVM(std::cout, r9a);















}