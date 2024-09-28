//
// Created by Administrator on 24-9-28.
//


#include <iostream>
#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Support/InitLLVM.h>
#include <llvm/Support/CommandLine.h>



int main(int argc, char **argv) {

    llvm::InitLLVM X(argc, argv);

    llvm::LLVMContext context;

    llvm::cl::opt<std::string> input(llvm::cl::Positional, llvm::cl::desc("<input file>"), llvm::cl::Required);

    llvm::cl::ParseCommandLineOptions(argc, argv, "llvm IR reader\n");

    llvm::SMDiagnostic err;
    auto module = llvm::parseIRFile(input, err, context);

    if (!module) {
        std::cerr << "Failed to parse IR file\n";
        return 1;
    }

    module->print(llvm::outs(), nullptr);

    return 0;



}