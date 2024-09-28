cmake_minimum_required(VERSION 3.2)


project(vm3.8x)

set(CMAKE_CXX_STANDARD 17)


list(APPEND CMAKE_PREFIX_PATH
        "E:/LLVM15/debug"
        "C:/Program Files (x86)/triton/debug"
        "C:/Program Files (x86)/capstone/"

)


add_definitions(-DUNICODE -D_UNICODE)
add_compile_options("$<$<C_COMPILER_ID:MSVC>:/utf-8>")
add_compile_options("$<$<CXX_COMPILER_ID:MSVC>:/utf-8>")


SET(UNICORN_INCLUDE_DIR "E:/vcpkg/installed/x64-windows/include")
SET(UNICORN_LIBRARY "E:/vcpkg/installed/x64-windows/lib/unicorn.lib")
SET(KEYSTONE_LIBRARY "E:/vcpkg/installed/x64-windows/lib/keystone.lib")




find_package(LLVM CONFIG REQUIRED)
find_package(triton CONFIG REQUIRED)
find_package(CAPSTONE CONFIG REQUIRED)


file(GLOB_RECURSE VM3.8X_SOURCES  CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")
file(GLOB_RECURSE VM3.8X_INCLUDES CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/src/*.h")
source_group(TREE ${PROJECT_SOURCE_DIR} FILES ${VM3.8X_SOURCES} ${VM3.8X_INCLUDES})


add_executable(${PROJECT_NAME} ${VM3.8X_SOURCES} ${VM3.8X_INCLUDES}
        src/entry.cpp)


target_include_directories(${PROJECT_NAME} PRIVATE
        "src/"
        ${UNICORN_INCLUDE_DIR}
)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
include_directories(${LLVM_INCLUDE_DIRS})
if(LLVM_LINK_LLVM_DYLIB)
    set(LLVM_LIBRARIES LLVM)
else()
    set(LLVM_LIBRARIES ${LLVM_AVAILABLE_LIBS})
    message(STATUS "LLVM libraries: ${LLVM_LIBRARIES}")
endif()


target_link_libraries(${PROJECT_NAME} PRIVATE
        capstone::capstone
        triton::triton
        ${UNICORN_LIBRARY}
        ${KEYSTONE_LIBRARY}
        LLVMDemangle;LLVMSupport;LLVMTableGen;LLVMTableGenGlobalISel;LLVMCore;LLVMFuzzerCLI;LLVMFuzzMutate;LLVMFileCheck;LLVMInterfaceStub;LLVMIRReader;LLVMCodeGen;LLVMSelectionDAG;LLVMAsmPrinter;LLVMMIRParser;LLVMGlobalISel;LLVMBinaryFormat;LLVMBitReader;LLVMBitWriter;LLVMBitstreamReader;LLVMDWARFLinker;LLVMExtensions;LLVMFrontendOpenACC;LLVMFrontendOpenMP;LLVMTransformUtils;LLVMInstrumentation;LLVMAggressiveInstCombine;LLVMInstCombine;LLVMScalarOpts;LLVMipo;LLVMVectorize;LLVMObjCARCOpts;LLVMCoroutines;LLVMCFGuard;LLVMLinker;LLVMAnalysis;LLVMLTO;LLVMMC;LLVMMCParser;LLVMMCDisassembler;LLVMMCA;LLVMObjCopy;LLVMObject;LLVMObjectYAML;LLVMOption;LLVMRemarks;LLVMDebuginfod;LLVMDebugInfoDWARF;LLVMDebugInfoGSYM;LLVMDebugInfoMSF;LLVMDebugInfoCodeView;LLVMDebugInfoPDB;LLVMSymbolize;LLVMDWP;LLVMExecutionEngine;LLVMInterpreter;LLVMJITLink;LLVMMCJIT;LLVMOrcJIT;LLVMOrcShared;LLVMOrcTargetProcess;LLVMRuntimeDyld;LLVMTarget;LLVMAArch64CodeGen;LLVMAArch64AsmParser;LLVMAArch64Disassembler;LLVMAArch64Desc;LLVMAArch64Info;LLVMAArch64Utils;LLVMAMDGPUCodeGen;LLVMAMDGPUAsmParser;LLVMAMDGPUDisassembler;LLVMAMDGPUTargetMCA;LLVMAMDGPUDesc;LLVMAMDGPUInfo;LLVMAMDGPUUtils;LLVMARMCodeGen;LLVMARMAsmParser;LLVMARMDisassembler;LLVMARMDesc;LLVMARMInfo;LLVMARMUtils;LLVMAVRCodeGen;LLVMAVRAsmParser;LLVMAVRDisassembler;LLVMAVRDesc;LLVMAVRInfo;LLVMBPFCodeGen;LLVMBPFAsmParser;LLVMBPFDisassembler;LLVMBPFDesc;LLVMBPFInfo;LLVMHexagonCodeGen;LLVMHexagonAsmParser;LLVMHexagonDisassembler;LLVMHexagonDesc;LLVMHexagonInfo;LLVMLanaiCodeGen;LLVMLanaiAsmParser;LLVMLanaiDisassembler;LLVMLanaiDesc;LLVMLanaiInfo;LLVMMipsCodeGen;LLVMMipsAsmParser;LLVMMipsDisassembler;LLVMMipsDesc;LLVMMipsInfo;LLVMMSP430CodeGen;LLVMMSP430Desc;LLVMMSP430Info;LLVMMSP430AsmParser;LLVMMSP430Disassembler;LLVMNVPTXCodeGen;LLVMNVPTXDesc;LLVMNVPTXInfo;LLVMPowerPCCodeGen;LLVMPowerPCAsmParser;LLVMPowerPCDisassembler;LLVMPowerPCDesc;LLVMPowerPCInfo;LLVMRISCVCodeGen;LLVMRISCVAsmParser;LLVMRISCVDisassembler;LLVMRISCVDesc;LLVMRISCVInfo;LLVMSparcCodeGen;LLVMSparcAsmParser;LLVMSparcDisassembler;LLVMSparcDesc;LLVMSparcInfo;LLVMSystemZCodeGen;LLVMSystemZAsmParser;LLVMSystemZDisassembler;LLVMSystemZDesc;LLVMSystemZInfo;LLVMVECodeGen;LLVMVEAsmParser;LLVMVEDisassembler;LLVMVEInfo;LLVMVEDesc;LLVMWebAssemblyCodeGen;LLVMWebAssemblyAsmParser;LLVMWebAssemblyDisassembler;LLVMWebAssemblyDesc;LLVMWebAssemblyInfo;LLVMWebAssemblyUtils;LLVMX86CodeGen;LLVMX86AsmParser;LLVMX86Disassembler;LLVMX86TargetMCA;LLVMX86Desc;LLVMX86Info;LLVMXCoreCodeGen;LLVMXCoreDisassembler;LLVMXCoreDesc;LLVMXCoreInfo;LLVMAsmParser;LLVMLineEditor;LLVMProfileData;LLVMCoverage;LLVMPasses;LLVMTextAPI;LLVMDlltoolDriver;LLVMLibDriver;LLVMXRay;LLVMWindowsDriver;LLVMWindowsManifest;LTO;LLVMCFIVerify;LLVMDiff;LLVMExegesisX86;LLVMExegesisAArch64;LLVMExegesisPowerPC;LLVMExegesisMips;LLVMExegesis;LLVM-C;
)