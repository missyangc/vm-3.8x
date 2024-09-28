; ModuleID = 'main.cpp'
source_filename = "main.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.41.34120"

%struct.fenv_t = type { i32, i32 }
%struct.anon = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.VirtualRegister = type { %union.anon }
%union.anon = type { i64 }

$"??$STACK_POP@_K@@YA_KAEA_K@Z" = comdat any

$"??$STACK_POP@I@@YAIAEA_K@Z" = comdat any

$"??$PUSH_IMM@_K@@YAXAEA_K_K@Z" = comdat any

$"??$PUSH_IMM@I@@YAXAEA_KI@Z" = comdat any

$"??$PUSH_IMM@G@@YAXAEA_KG@Z" = comdat any

$"??$PUSH_VSP@$0EA@@@YAXAEA_K@Z" = comdat any

$"??$PUSH_VSP@$0CA@@@YAXAEA_K@Z" = comdat any

$"??$PUSH_VSP@$0BA@@@YAXAEA_K@Z" = comdat any

$"??$POP_VSP@$0EA@@@YAXAEA_K@Z" = comdat any

$"??$POP_VSP@$0CA@@@YAXAEA_K@Z" = comdat any

$"??$POP_VSP@$0BA@@@YAXAEA_K@Z" = comdat any

$"??$LOAD@_K@@YAXAEA_K@Z" = comdat any

$"??$LOAD@I@@YAXAEA_K@Z" = comdat any

$"??$LOAD@G@@YAXAEA_K@Z" = comdat any

$"??$LOAD@E@@YAXAEA_K@Z" = comdat any

$"??$LOAD_GS@_K@@YAXAEA_K@Z" = comdat any

$"??$LOAD_GS@I@@YAXAEA_K@Z" = comdat any

$"??$LOAD_GS@G@@YAXAEA_K@Z" = comdat any

$"??$LOAD_GS@E@@YAXAEA_K@Z" = comdat any

$"??$LOAD_FS@_K@@YAXAEA_K@Z" = comdat any

$"??$LOAD_FS@I@@YAXAEA_K@Z" = comdat any

$"??$LOAD_FS@G@@YAXAEA_K@Z" = comdat any

$"??$LOAD_FS@E@@YAXAEA_K@Z" = comdat any

$"??$STORE@_K@@YAXAEA_K@Z" = comdat any

$"??$STORE@I@@YAXAEA_K@Z" = comdat any

$"??$STORE@G@@YAXAEA_K@Z" = comdat any

$"??$STORE@E@@YAXAEA_K@Z" = comdat any

$"??$PUSH_VREG@$07$0A@@@YAXAEA_KUVirtualRegister@@@Z" = comdat any

$"??$PUSH_VREG@$07$00@@YAXAEA_KUVirtualRegister@@@Z" = comdat any

$"??$PUSH_VREG@$0BA@$0A@@@YAXAEA_KUVirtualRegister@@@Z" = comdat any

$"??$PUSH_VREG@$0BA@$00@@YAXAEA_KUVirtualRegister@@@Z" = comdat any

$"??$PUSH_VREG@$0BA@$01@@YAXAEA_KUVirtualRegister@@@Z" = comdat any

$"??$PUSH_VREG@$0BA@$02@@YAXAEA_KUVirtualRegister@@@Z" = comdat any

$"??$PUSH_VREG@$0CA@$0A@@@YAXAEA_KUVirtualRegister@@@Z" = comdat any

$"??$PUSH_VREG@$0CA@$00@@YAXAEA_KUVirtualRegister@@@Z" = comdat any

$"??$PUSH_VREG@$0EA@$0A@@@YAXAEA_KUVirtualRegister@@@Z" = comdat any

$"??$POP_VREG@$07$0A@@@YAXAEA_KAEAUVirtualRegister@@@Z" = comdat any

$"??$POP_VREG@$07$00@@YAXAEA_KAEAUVirtualRegister@@@Z" = comdat any

$"??$POP_VREG@$0BA@$0A@@@YAXAEA_KAEAUVirtualRegister@@@Z" = comdat any

$"??$POP_VREG@$0BA@$00@@YAXAEA_KAEAUVirtualRegister@@@Z" = comdat any

$"??$POP_VREG@$0BA@$01@@YAXAEA_KAEAUVirtualRegister@@@Z" = comdat any

$"??$POP_VREG@$0BA@$02@@YAXAEA_KAEAUVirtualRegister@@@Z" = comdat any

$"??$POP_VREG@$0CA@$0A@@@YAXAEA_KAEAUVirtualRegister@@@Z" = comdat any

$"??$POP_VREG@$0CA@$00@@YAXAEA_KAEAUVirtualRegister@@@Z" = comdat any

$"??$POP_VREG@$0EA@$0A@@@YAXAEA_KAEAUVirtualRegister@@@Z" = comdat any

$"??$ADD@_K@@YAXAEA_K@Z" = comdat any

$"??$ADD@I@@YAXAEA_K@Z" = comdat any

$"??$ADD@G@@YAXAEA_K@Z" = comdat any

$"??$ADD@E@@YAXAEA_K@Z" = comdat any

$"??$DIV@_K@@YAXAEA_K@Z" = comdat any

$"??$DIV@I@@YAXAEA_K@Z" = comdat any

$"??$DIV@G@@YAXAEA_K@Z" = comdat any

$"??$DIV@E@@YAXAEA_K@Z" = comdat any

$"??$IDIV@_K@@YAXAEA_K@Z" = comdat any

$"??$IDIV@I@@YAXAEA_K@Z" = comdat any

$"??$IDIV@G@@YAXAEA_K@Z" = comdat any

$"??$IDIV@E@@YAXAEA_K@Z" = comdat any

$"??$MUL@_K@@YAXAEA_K@Z" = comdat any

$"??$MUL@I@@YAXAEA_K@Z" = comdat any

$"??$MUL@G@@YAXAEA_K@Z" = comdat any

$"??$MUL@E@@YAXAEA_K@Z" = comdat any

$"??$IMUL@_K@@YAXAEA_K@Z" = comdat any

$"??$IMUL@I@@YAXAEA_K@Z" = comdat any

$"??$IMUL@G@@YAXAEA_K@Z" = comdat any

$"??$IMUL@E@@YAXAEA_K@Z" = comdat any

$"??$NOR@_K@@YAXAEA_K@Z" = comdat any

$"??$NOR@I@@YAXAEA_K@Z" = comdat any

$"??$NOR@G@@YAXAEA_K@Z" = comdat any

$"??$NOR@E@@YAXAEA_K@Z" = comdat any

$"??$NAND@_K@@YAXAEA_K@Z" = comdat any

$"??$NAND@I@@YAXAEA_K@Z" = comdat any

$"??$NAND@G@@YAXAEA_K@Z" = comdat any

$"??$NAND@E@@YAXAEA_K@Z" = comdat any

$"??$SHL@_K@@YAXAEA_K@Z" = comdat any

$"??$SHL@I@@YAXAEA_K@Z" = comdat any

$"??$SHL@G@@YAXAEA_K@Z" = comdat any

$"??$SHL@E@@YAXAEA_K@Z" = comdat any

$"??$SHR@_K@@YAXAEA_K@Z" = comdat any

$"??$SHR@I@@YAXAEA_K@Z" = comdat any

$"??$SHR@G@@YAXAEA_K@Z" = comdat any

$"??$SHR@E@@YAXAEA_K@Z" = comdat any

$"??$SHLD@_K@@YAXAEA_K@Z" = comdat any

$"??$SHLD@I@@YAXAEA_K@Z" = comdat any

$"??$SHLD@G@@YAXAEA_K@Z" = comdat any

$"??$SHLD@E@@YAXAEA_K@Z" = comdat any

$"??$SHRD@_K@@YAXAEA_K@Z" = comdat any

$"??$SHRD@I@@YAXAEA_K@Z" = comdat any

$"??$SHRD@G@@YAXAEA_K@Z" = comdat any

$"??$SHRD@E@@YAXAEA_K@Z" = comdat any

$_Fenv1 = comdat any

@_Fenv1 = weak_odr dso_local local_unnamed_addr constant %struct.fenv_t { i32 1056964671, i32 0 }, comdat, align 4
@SEM_STACK_POP_64 = dso_local constant ptr @"??$STACK_POP@_K@@YA_KAEA_K@Z", align 8
@SEM_UNDEF_STACK_POP_32 = dso_local constant ptr @"??$STACK_POP@I@@YAIAEA_K@Z", align 8
@SEM_PUSH_IMM_64 = dso_local constant ptr @"??$PUSH_IMM@_K@@YAXAEA_K_K@Z", align 8
@SEM_PUSH_IMM_32 = dso_local constant ptr @"??$PUSH_IMM@I@@YAXAEA_KI@Z", align 8
@SEM_PUSH_IMM_16 = dso_local constant ptr @"??$PUSH_IMM@G@@YAXAEA_KG@Z", align 8
@SEM_PUSH_VSP_64 = dso_local constant ptr @"??$PUSH_VSP@$0EA@@@YAXAEA_K@Z", align 8
@SEM_PUSH_VSP_32 = dso_local constant ptr @"??$PUSH_VSP@$0CA@@@YAXAEA_K@Z", align 8
@SEM_PUSH_VSP_16 = dso_local constant ptr @"??$PUSH_VSP@$0BA@@@YAXAEA_K@Z", align 8
@SEM_POP_VSP_64 = dso_local constant ptr @"??$POP_VSP@$0EA@@@YAXAEA_K@Z", align 8
@SEM_POP_VSP_32 = dso_local constant ptr @"??$POP_VSP@$0CA@@@YAXAEA_K@Z", align 8
@SEM_POP_VSP_16 = dso_local constant ptr @"??$POP_VSP@$0BA@@@YAXAEA_K@Z", align 8
@SEM_POP_FLAGS = dso_local constant ptr @"?POP_FLAGS@@YAXAEA_K0@Z", align 8
@SEM_LOAD_SS_64 = dso_local constant ptr @"??$LOAD@_K@@YAXAEA_K@Z", align 8
@SEM_LOAD_SS_32 = dso_local constant ptr @"??$LOAD@I@@YAXAEA_K@Z", align 8
@SEM_LOAD_SS_16 = dso_local constant ptr @"??$LOAD@G@@YAXAEA_K@Z", align 8
@SEM_LOAD_SS_8 = dso_local constant ptr @"??$LOAD@E@@YAXAEA_K@Z", align 8
@SEM_LOAD_DS_64 = dso_local constant ptr @"??$LOAD@_K@@YAXAEA_K@Z", align 8
@SEM_LOAD_DS_32 = dso_local constant ptr @"??$LOAD@I@@YAXAEA_K@Z", align 8
@SEM_LOAD_DS_16 = dso_local constant ptr @"??$LOAD@G@@YAXAEA_K@Z", align 8
@SEM_LOAD_DS_8 = dso_local constant ptr @"??$LOAD@E@@YAXAEA_K@Z", align 8
@SEM_LOAD_64 = dso_local constant ptr @"??$LOAD@_K@@YAXAEA_K@Z", align 8
@SEM_LOAD_32 = dso_local constant ptr @"??$LOAD@I@@YAXAEA_K@Z", align 8
@SEM_LOAD_16 = dso_local constant ptr @"??$LOAD@G@@YAXAEA_K@Z", align 8
@SEM_LOAD_8 = dso_local constant ptr @"??$LOAD@E@@YAXAEA_K@Z", align 8
@SEM_LOAD_GS_64 = dso_local constant ptr @"??$LOAD_GS@_K@@YAXAEA_K@Z", align 8
@SEM_LOAD_GS_32 = dso_local constant ptr @"??$LOAD_GS@I@@YAXAEA_K@Z", align 8
@SEM_LOAD_GS_16 = dso_local constant ptr @"??$LOAD_GS@G@@YAXAEA_K@Z", align 8
@SEM_LOAD_GS_8 = dso_local constant ptr @"??$LOAD_GS@E@@YAXAEA_K@Z", align 8
@SEM_LOAD_FS_64 = dso_local constant ptr @"??$LOAD_FS@_K@@YAXAEA_K@Z", align 8
@SEM_LOAD_FS_32 = dso_local constant ptr @"??$LOAD_FS@I@@YAXAEA_K@Z", align 8
@SEM_LOAD_FS_16 = dso_local constant ptr @"??$LOAD_FS@G@@YAXAEA_K@Z", align 8
@SEM_LOAD_FS_8 = dso_local constant ptr @"??$LOAD_FS@E@@YAXAEA_K@Z", align 8
@SEM_STORE_SS_64 = dso_local constant ptr @"??$STORE@_K@@YAXAEA_K@Z", align 8
@SEM_STORE_SS_32 = dso_local constant ptr @"??$STORE@I@@YAXAEA_K@Z", align 8
@SEM_STORE_SS_16 = dso_local constant ptr @"??$STORE@G@@YAXAEA_K@Z", align 8
@SEM_STORE_SS_8 = dso_local constant ptr @"??$STORE@E@@YAXAEA_K@Z", align 8
@SEM_STORE_DS_64 = dso_local constant ptr @"??$STORE@_K@@YAXAEA_K@Z", align 8
@SEM_STORE_DS_32 = dso_local constant ptr @"??$STORE@I@@YAXAEA_K@Z", align 8
@SEM_STORE_DS_16 = dso_local constant ptr @"??$STORE@G@@YAXAEA_K@Z", align 8
@SEM_STORE_DS_8 = dso_local constant ptr @"??$STORE@E@@YAXAEA_K@Z", align 8
@SEM_STORE_64 = dso_local constant ptr @"??$STORE@_K@@YAXAEA_K@Z", align 8
@SEM_STORE_32 = dso_local constant ptr @"??$STORE@I@@YAXAEA_K@Z", align 8
@SEM_STORE_16 = dso_local constant ptr @"??$STORE@G@@YAXAEA_K@Z", align 8
@SEM_STORE_8 = dso_local constant ptr @"??$STORE@E@@YAXAEA_K@Z", align 8
@SEM_PUSH_VREG_8_0 = dso_local constant ptr @"??$PUSH_VREG@$07$0A@@@YAXAEA_KUVirtualRegister@@@Z", align 8
@SEM_PUSH_VREG_8_1 = dso_local constant ptr @"??$PUSH_VREG@$07$00@@YAXAEA_KUVirtualRegister@@@Z", align 8
@SEM_PUSH_VREG_16_0 = dso_local constant ptr @"??$PUSH_VREG@$0BA@$0A@@@YAXAEA_KUVirtualRegister@@@Z", align 8
@SEM_PUSH_VREG_16_2 = dso_local constant ptr @"??$PUSH_VREG@$0BA@$00@@YAXAEA_KUVirtualRegister@@@Z", align 8
@SEM_PUSH_VREG_16_4 = dso_local constant ptr @"??$PUSH_VREG@$0BA@$01@@YAXAEA_KUVirtualRegister@@@Z", align 8
@SEM_PUSH_VREG_16_6 = dso_local constant ptr @"??$PUSH_VREG@$0BA@$02@@YAXAEA_KUVirtualRegister@@@Z", align 8
@SEM_PUSH_VREG_32_0 = dso_local constant ptr @"??$PUSH_VREG@$0CA@$0A@@@YAXAEA_KUVirtualRegister@@@Z", align 8
@SEM_UNDEF_PUSH_VREG_32 = dso_local constant ptr @"??$PUSH_VREG@$0CA@$0A@@@YAXAEA_KUVirtualRegister@@@Z", align 8
@SEM_PUSH_VREG_32_4 = dso_local constant ptr @"??$PUSH_VREG@$0CA@$00@@YAXAEA_KUVirtualRegister@@@Z", align 8
@SEM_PUSH_VREG_64_0 = dso_local constant ptr @"??$PUSH_VREG@$0EA@$0A@@@YAXAEA_KUVirtualRegister@@@Z", align 8
@SEM_POP_VREG_8_0 = dso_local constant ptr @"??$POP_VREG@$07$0A@@@YAXAEA_KAEAUVirtualRegister@@@Z", align 8
@SEM_POP_VREG_8_1 = dso_local constant ptr @"??$POP_VREG@$07$00@@YAXAEA_KAEAUVirtualRegister@@@Z", align 8
@SEM_POP_VREG_16_0 = dso_local constant ptr @"??$POP_VREG@$0BA@$0A@@@YAXAEA_KAEAUVirtualRegister@@@Z", align 8
@SEM_POP_VREG_16_2 = dso_local constant ptr @"??$POP_VREG@$0BA@$00@@YAXAEA_KAEAUVirtualRegister@@@Z", align 8
@SEM_POP_VREG_16_4 = dso_local constant ptr @"??$POP_VREG@$0BA@$01@@YAXAEA_KAEAUVirtualRegister@@@Z", align 8
@SEM_POP_VREG_16_6 = dso_local constant ptr @"??$POP_VREG@$0BA@$02@@YAXAEA_KAEAUVirtualRegister@@@Z", align 8
@SEM_POP_VREG_32_0 = dso_local constant ptr @"??$POP_VREG@$0CA@$0A@@@YAXAEA_KAEAUVirtualRegister@@@Z", align 8
@SEM_UNDEF_POP_VREG_32 = dso_local constant ptr @"??$POP_VREG@$0CA@$0A@@@YAXAEA_KAEAUVirtualRegister@@@Z", align 8
@SEM_POP_VREG_32_4 = dso_local constant ptr @"??$POP_VREG@$0CA@$00@@YAXAEA_KAEAUVirtualRegister@@@Z", align 8
@SEM_POP_VREG_64_0 = dso_local constant ptr @"??$POP_VREG@$0EA@$0A@@@YAXAEA_KAEAUVirtualRegister@@@Z", align 8
@SEM_PUSH_REG_64 = dso_local constant ptr @"?PUSH_REG@@YAXAEA_K_K@Z", align 8
@SEM_UNDEF_PUSH_REG_32 = dso_local constant ptr @"?PUSH_REG@@YAXAEA_K_K@Z", align 8
@SEM_POP_REG_64 = dso_local constant ptr @"?POP_REG@@YAXAEA_K0@Z", align 8
@SEM_UNDEF_POP_REG_32 = dso_local constant ptr @"?POP_REG@@YAXAEA_K0@Z", align 8
@SEM_CPUID = dso_local constant ptr @"?CPUID@@YAXAEA_K@Z", align 8
@SEM_RDTSC = dso_local constant ptr @"?RDTSC@@YAXAEA_K@Z", align 8
@SEM_ADD_64 = dso_local constant ptr @"??$ADD@_K@@YAXAEA_K@Z", align 8
@SEM_ADD_32 = dso_local constant ptr @"??$ADD@I@@YAXAEA_K@Z", align 8
@SEM_ADD_16 = dso_local constant ptr @"??$ADD@G@@YAXAEA_K@Z", align 8
@SEM_ADD_8 = dso_local constant ptr @"??$ADD@E@@YAXAEA_K@Z", align 8
@SEM_DIV_64 = dso_local constant ptr @"??$DIV@_K@@YAXAEA_K@Z", align 8
@SEM_DIV_32 = dso_local constant ptr @"??$DIV@I@@YAXAEA_K@Z", align 8
@SEM_DIV_16 = dso_local constant ptr @"??$DIV@G@@YAXAEA_K@Z", align 8
@SEM_DIV_8 = dso_local constant ptr @"??$DIV@E@@YAXAEA_K@Z", align 8
@SEM_IDIV_64 = dso_local constant ptr @"??$IDIV@_K@@YAXAEA_K@Z", align 8
@SEM_IDIV_32 = dso_local constant ptr @"??$IDIV@I@@YAXAEA_K@Z", align 8
@SEM_IDIV_16 = dso_local constant ptr @"??$IDIV@G@@YAXAEA_K@Z", align 8
@SEM_IDIV_8 = dso_local constant ptr @"??$IDIV@E@@YAXAEA_K@Z", align 8
@SEM_MUL_64 = dso_local constant ptr @"??$MUL@_K@@YAXAEA_K@Z", align 8
@SEM_MUL_32 = dso_local constant ptr @"??$MUL@I@@YAXAEA_K@Z", align 8
@SEM_MUL_16 = dso_local constant ptr @"??$MUL@G@@YAXAEA_K@Z", align 8
@SEM_MUL_8 = dso_local constant ptr @"??$MUL@E@@YAXAEA_K@Z", align 8
@SEM_IMUL_64 = dso_local constant ptr @"??$IMUL@_K@@YAXAEA_K@Z", align 8
@SEM_IMUL_32 = dso_local constant ptr @"??$IMUL@I@@YAXAEA_K@Z", align 8
@SEM_IMUL_16 = dso_local constant ptr @"??$IMUL@G@@YAXAEA_K@Z", align 8
@SEM_IMUL_8 = dso_local constant ptr @"??$IMUL@E@@YAXAEA_K@Z", align 8
@SEM_NOR_64 = dso_local constant ptr @"??$NOR@_K@@YAXAEA_K@Z", align 8
@SEM_NOR_32 = dso_local constant ptr @"??$NOR@I@@YAXAEA_K@Z", align 8
@SEM_NOR_16 = dso_local constant ptr @"??$NOR@G@@YAXAEA_K@Z", align 8
@SEM_NOR_8 = dso_local constant ptr @"??$NOR@E@@YAXAEA_K@Z", align 8
@SEM_NAND_64 = dso_local constant ptr @"??$NAND@_K@@YAXAEA_K@Z", align 8
@SEM_NAND_32 = dso_local constant ptr @"??$NAND@I@@YAXAEA_K@Z", align 8
@SEM_NAND_16 = dso_local constant ptr @"??$NAND@G@@YAXAEA_K@Z", align 8
@SEM_NAND_8 = dso_local constant ptr @"??$NAND@E@@YAXAEA_K@Z", align 8
@SEM_SHL_64 = dso_local constant ptr @"??$SHL@_K@@YAXAEA_K@Z", align 8
@SEM_SHL_32 = dso_local constant ptr @"??$SHL@I@@YAXAEA_K@Z", align 8
@SEM_SHL_16 = dso_local constant ptr @"??$SHL@G@@YAXAEA_K@Z", align 8
@SEM_SHL_8 = dso_local constant ptr @"??$SHL@E@@YAXAEA_K@Z", align 8
@SEM_SHR_64 = dso_local constant ptr @"??$SHR@_K@@YAXAEA_K@Z", align 8
@SEM_SHR_32 = dso_local constant ptr @"??$SHR@I@@YAXAEA_K@Z", align 8
@SEM_SHR_16 = dso_local constant ptr @"??$SHR@G@@YAXAEA_K@Z", align 8
@SEM_SHR_8 = dso_local constant ptr @"??$SHR@E@@YAXAEA_K@Z", align 8
@SEM_SHLD_64 = dso_local constant ptr @"??$SHLD@_K@@YAXAEA_K@Z", align 8
@SEM_SHLD_32 = dso_local constant ptr @"??$SHLD@I@@YAXAEA_K@Z", align 8
@SEM_SHLD_16 = dso_local constant ptr @"??$SHLD@G@@YAXAEA_K@Z", align 8
@SEM_SHLD_8 = dso_local constant ptr @"??$SHLD@E@@YAXAEA_K@Z", align 8
@SEM_SHRD_64 = dso_local constant ptr @"??$SHRD@_K@@YAXAEA_K@Z", align 8
@SEM_SHRD_32 = dso_local constant ptr @"??$SHRD@I@@YAXAEA_K@Z", align 8
@SEM_SHRD_16 = dso_local constant ptr @"??$SHRD@G@@YAXAEA_K@Z", align 8
@SEM_SHRD_8 = dso_local constant ptr @"??$SHRD@E@@YAXAEA_K@Z", align 8
@SEM_JCC_INC = dso_local constant ptr @"?JCC_INC@@YAXAEA_K0@Z", align 8
@SEM_JCC_DEC = dso_local constant ptr @"?JCC_DEC@@YAXAEA_K0@Z", align 8
@SEM_JMP = dso_local constant ptr @"?JMP@@YAXAEA_K0@Z", align 8
@SEM_RET = dso_local constant ptr @"?JMP@@YAXAEA_K0@Z", align 8
@RAM = external dso_local local_unnamed_addr global [0 x i8], align 1
@GS = external dso_local local_unnamed_addr global [0 x i8], align 1
@FS = external dso_local local_unnamed_addr global [0 x i8], align 1
@__undef = external dso_local local_unnamed_addr global i64, align 8
@llvm.used = appending global [118 x ptr] [ptr @SEM_ADD_16, ptr @SEM_ADD_32, ptr @SEM_ADD_64, ptr @SEM_ADD_8, ptr @SEM_CPUID, ptr @SEM_DIV_16, ptr @SEM_DIV_32, ptr @SEM_DIV_64, ptr @SEM_DIV_8, ptr @SEM_IDIV_16, ptr @SEM_IDIV_32, ptr @SEM_IDIV_64, ptr @SEM_IDIV_8, ptr @SEM_IMUL_16, ptr @SEM_IMUL_32, ptr @SEM_IMUL_64, ptr @SEM_IMUL_8, ptr @SEM_JCC_DEC, ptr @SEM_JCC_INC, ptr @SEM_JMP, ptr @SEM_LOAD_16, ptr @SEM_LOAD_32, ptr @SEM_LOAD_64, ptr @SEM_LOAD_8, ptr @SEM_LOAD_DS_16, ptr @SEM_LOAD_DS_32, ptr @SEM_LOAD_DS_64, ptr @SEM_LOAD_DS_8, ptr @SEM_LOAD_FS_16, ptr @SEM_LOAD_FS_32, ptr @SEM_LOAD_FS_64, ptr @SEM_LOAD_FS_8, ptr @SEM_LOAD_GS_16, ptr @SEM_LOAD_GS_32, ptr @SEM_LOAD_GS_64, ptr @SEM_LOAD_GS_8, ptr @SEM_LOAD_SS_16, ptr @SEM_LOAD_SS_32, ptr @SEM_LOAD_SS_64, ptr @SEM_LOAD_SS_8, ptr @SEM_MUL_16, ptr @SEM_MUL_32, ptr @SEM_MUL_64, ptr @SEM_MUL_8, ptr @SEM_NAND_16, ptr @SEM_NAND_32, ptr @SEM_NAND_64, ptr @SEM_NAND_8, ptr @SEM_NOR_16, ptr @SEM_NOR_32, ptr @SEM_NOR_64, ptr @SEM_NOR_8, ptr @SEM_POP_FLAGS, ptr @SEM_POP_REG_64, ptr @SEM_POP_VREG_16_0, ptr @SEM_POP_VREG_16_2, ptr @SEM_POP_VREG_16_4, ptr @SEM_POP_VREG_16_6, ptr @SEM_POP_VREG_32_0, ptr @SEM_POP_VREG_32_4, ptr @SEM_POP_VREG_64_0, ptr @SEM_POP_VREG_8_0, ptr @SEM_POP_VREG_8_1, ptr @SEM_POP_VSP_16, ptr @SEM_POP_VSP_32, ptr @SEM_POP_VSP_64, ptr @SEM_PUSH_IMM_16, ptr @SEM_PUSH_IMM_32, ptr @SEM_PUSH_IMM_64, ptr @SEM_PUSH_REG_64, ptr @SEM_PUSH_VREG_16_0, ptr @SEM_PUSH_VREG_16_2, ptr @SEM_PUSH_VREG_16_4, ptr @SEM_PUSH_VREG_16_6, ptr @SEM_PUSH_VREG_32_0, ptr @SEM_PUSH_VREG_32_4, ptr @SEM_PUSH_VREG_64_0, ptr @SEM_PUSH_VREG_8_0, ptr @SEM_PUSH_VREG_8_1, ptr @SEM_PUSH_VSP_16, ptr @SEM_PUSH_VSP_32, ptr @SEM_PUSH_VSP_64, ptr @SEM_RDTSC, ptr @SEM_RET, ptr @SEM_SHLD_16, ptr @SEM_SHLD_32, ptr @SEM_SHLD_64, ptr @SEM_SHLD_8, ptr @SEM_SHL_16, ptr @SEM_SHL_32, ptr @SEM_SHL_64, ptr @SEM_SHL_8, ptr @SEM_SHRD_16, ptr @SEM_SHRD_32, ptr @SEM_SHRD_64, ptr @SEM_SHRD_8, ptr @SEM_SHR_16, ptr @SEM_SHR_32, ptr @SEM_SHR_64, ptr @SEM_SHR_8, ptr @SEM_STACK_POP_64, ptr @SEM_STORE_16, ptr @SEM_STORE_32, ptr @SEM_STORE_64, ptr @SEM_STORE_8, ptr @SEM_STORE_DS_16, ptr @SEM_STORE_DS_32, ptr @SEM_STORE_DS_64, ptr @SEM_STORE_DS_8, ptr @SEM_STORE_SS_16, ptr @SEM_STORE_SS_32, ptr @SEM_STORE_SS_64, ptr @SEM_STORE_SS_8, ptr @SEM_UNDEF_POP_REG_32, ptr @SEM_UNDEF_POP_VREG_32, ptr @SEM_UNDEF_PUSH_REG_32, ptr @SEM_UNDEF_PUSH_VREG_32, ptr @SEM_UNDEF_STACK_POP_32], section "llvm.metadata"

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef i64 @"??$STACK_POP@_K@@YA_KAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload = load i64, ptr %arrayidx, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add = add i64 %2, 8
  store i64 %add, ptr %vsp, align 8, !tbaa !10
  ret i64 %value.0.copyload
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef i32 @"??$STACK_POP@I@@YAIAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload = load i32, ptr %arrayidx, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i = trunc i64 %1 to i32
  store i32 %conv.i, ptr %arrayidx, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add = add i64 %2, 4
  store i64 %add, ptr %vsp, align 8, !tbaa !10
  ret i32 %value.0.copyload
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$PUSH_IMM@_K@@YAXAEA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, i64 noundef %value) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i = add i64 %0, -8
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i64 %value, ptr %arrayidx.i, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$PUSH_IMM@I@@YAXAEA_KI@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, i32 noundef %value) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i = add i64 %0, -4
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i32 %value, ptr %arrayidx.i, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$PUSH_IMM@G@@YAXAEA_KG@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, i16 noundef %value) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i = add i64 %0, -2
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i16 %value, ptr %arrayidx.i, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$PUSH_VSP@$0EA@@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i = add i64 %0, -8
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i64 %0, ptr %arrayidx.i, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$PUSH_VSP@$0CA@@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %conv = trunc i64 %0 to i32
  %sub.i = add i64 %0, -4
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i32 %conv, ptr %arrayidx.i, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @"??$PUSH_VSP@$0BA@@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #1 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %conv = trunc i64 %0 to i16
  %sub.i = add i64 %0, -2
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i16 %conv, ptr %arrayidx.i, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$POP_VSP@$0EA@@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  store i64 %value.0.copyload.i, ptr %vsp, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$POP_VSP@$0CA@@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i32
  store i32 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 4
  %and = and i64 %add.i, -4294967296
  %conv = zext i32 %value.0.copyload.i to i64
  %or = or i64 %and, %conv
  store i64 %or, ptr %vsp, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$POP_VSP@$0BA@@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  %and = and i64 %add.i, -65536
  %conv = zext i16 %value.0.copyload.i to i64
  %or = or i64 %and, %conv
  store i64 %or, ptr %vsp, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @"?POP_FLAGS@@YAXAEA_K0@Z"(ptr nocapture noundef nonnull align 8 dereferenceable(8) %vsp, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %eflags) #2 {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  store i64 %value.0.copyload.i, ptr %eflags, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$LOAD@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #3 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %value.0.copyload.i
  %value.0.copyload = load i64, ptr %arrayidx, align 1
  store i64 %2, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i5 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %2
  store i64 %value.0.copyload, ptr %arrayidx.i5, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$LOAD@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %value.0.copyload.i
  %value.0.copyload = load i32, ptr %arrayidx, align 1
  %sub.i = add i64 %2, 4
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i5 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i32 %value.0.copyload, ptr %arrayidx.i5, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$LOAD@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %value.0.copyload.i
  %value.0.copyload = load i16, ptr %arrayidx, align 1
  %sub.i = add i64 %2, 6
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i5 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i16 %value.0.copyload, ptr %arrayidx.i5, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$LOAD@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %value.0.copyload.i
  %value.0.copyload = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %value.0.copyload to i16
  %sub.i = add i64 %2, 6
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i5 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i16 %conv.i, ptr %arrayidx.i5, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$LOAD_GS@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #3 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @GS, i64 0, i64 %value.0.copyload.i
  %value.0.copyload = load i64, ptr %arrayidx, align 1
  store i64 %2, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i5 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %2
  store i64 %value.0.copyload, ptr %arrayidx.i5, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$LOAD_GS@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @GS, i64 0, i64 %value.0.copyload.i
  %value.0.copyload = load i32, ptr %arrayidx, align 1
  %sub.i = add i64 %2, 4
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i5 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i32 %value.0.copyload, ptr %arrayidx.i5, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$LOAD_GS@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @GS, i64 0, i64 %value.0.copyload.i
  %value.0.copyload = load i16, ptr %arrayidx, align 1
  %sub.i = add i64 %2, 6
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i5 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i16 %value.0.copyload, ptr %arrayidx.i5, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$LOAD_GS@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @GS, i64 0, i64 %value.0.copyload.i
  %value.0.copyload = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %value.0.copyload to i16
  %sub.i = add i64 %2, 6
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i5 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i16 %conv.i, ptr %arrayidx.i5, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$LOAD_FS@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #3 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @FS, i64 0, i64 %value.0.copyload.i
  %value.0.copyload = load i64, ptr %arrayidx, align 1
  store i64 %2, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i5 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %2
  store i64 %value.0.copyload, ptr %arrayidx.i5, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$LOAD_FS@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @FS, i64 0, i64 %value.0.copyload.i
  %value.0.copyload = load i32, ptr %arrayidx, align 1
  %sub.i = add i64 %2, 4
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i5 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i32 %value.0.copyload, ptr %arrayidx.i5, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$LOAD_FS@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @FS, i64 0, i64 %value.0.copyload.i
  %value.0.copyload = load i16, ptr %arrayidx, align 1
  %sub.i = add i64 %2, 6
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i5 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i16 %value.0.copyload, ptr %arrayidx.i5, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$LOAD_FS@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @FS, i64 0, i64 %value.0.copyload.i
  %value.0.copyload = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %value.0.copyload to i16
  %sub.i = add i64 %2, 6
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i5 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i16 %conv.i, ptr %arrayidx.i5, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$STORE@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i6 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i7 = load i64, ptr %arrayidx.i6, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %3, ptr %arrayidx.i6, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i8 = add i64 %4, 8
  store i64 %add.i8, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %value.0.copyload.i
  store i64 %value.0.copyload.i7, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$STORE@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i6 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i7 = load i32, ptr %arrayidx.i6, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %3 to i32
  store i32 %conv.i.i, ptr %arrayidx.i6, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i8 = add i64 %4, 4
  store i64 %add.i8, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %value.0.copyload.i
  store i32 %value.0.copyload.i7, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$STORE@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i6 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i7 = load i16, ptr %arrayidx.i6, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %3 to i16
  store i16 %conv.i.i, ptr %arrayidx.i6, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i8 = add i64 %4, 2
  store i64 %add.i8, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %value.0.copyload.i
  store i16 %value.0.copyload.i7, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$STORE@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i6 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i7 = load i16, ptr %arrayidx.i6, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %3 to i16
  store i16 %conv.i.i, ptr %arrayidx.i6, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i8 = add i64 %4, 2
  store i64 %add.i8, ptr %vsp, align 8, !tbaa !10
  %conv.i = trunc i16 %value.0.copyload.i7 to i8
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %value.0.copyload.i
  store i8 %conv.i, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$PUSH_VREG@$07$0A@@@YAXAEA_KUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, i64 %vmreg.coerce) #0 comdat {
entry:
  %vmreg.sroa.0.0.extract.trunc = trunc i64 %vmreg.coerce to i16
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub = add i64 %0, -2
  store i64 %sub, ptr %vsp, align 8, !tbaa !10
  %conv.i = and i16 %vmreg.sroa.0.0.extract.trunc, 255
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub
  store i16 %conv.i, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$PUSH_VREG@$07$00@@YAXAEA_KUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, i64 %vmreg.coerce) #0 comdat {
entry:
  %0 = trunc i64 %vmreg.coerce to i16
  %1 = lshr i16 %0, 8
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub = add i64 %2, -2
  store i64 %sub, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub
  store i16 %1, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @"??$PUSH_VREG@$0BA@$0A@@@YAXAEA_KUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, i64 %vmreg.coerce) #1 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub = add i64 %0, -2
  store i64 %sub, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub
  %vmreg.sroa.0.0.extract.trunc = trunc i64 %vmreg.coerce to i16
  store i16 %vmreg.sroa.0.0.extract.trunc, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @"??$PUSH_VREG@$0BA@$00@@YAXAEA_KUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, i64 %vmreg.coerce) #1 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub = add i64 %0, -2
  store i64 %sub, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub
  %vmreg.sroa.0.2.extract.shift = lshr i64 %vmreg.coerce, 16
  %vmreg.sroa.0.2.extract.trunc = trunc i64 %vmreg.sroa.0.2.extract.shift to i16
  store i16 %vmreg.sroa.0.2.extract.trunc, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @"??$PUSH_VREG@$0BA@$01@@YAXAEA_KUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, i64 %vmreg.coerce) #1 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub = add i64 %0, -2
  store i64 %sub, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub
  %vmreg.sroa.0.4.extract.shift = lshr i64 %vmreg.coerce, 32
  %vmreg.sroa.0.4.extract.trunc = trunc i64 %vmreg.sroa.0.4.extract.shift to i16
  store i16 %vmreg.sroa.0.4.extract.trunc, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @"??$PUSH_VREG@$0BA@$02@@YAXAEA_KUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, i64 %vmreg.coerce) #1 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub = add i64 %0, -2
  store i64 %sub, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub
  %vmreg.sroa.0.6.extract.shift = lshr i64 %vmreg.coerce, 48
  %vmreg.sroa.0.6.extract.trunc = trunc i64 %vmreg.sroa.0.6.extract.shift to i16
  store i16 %vmreg.sroa.0.6.extract.trunc, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @"??$PUSH_VREG@$0CA@$0A@@@YAXAEA_KUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, i64 %vmreg.coerce) #1 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub = add i64 %0, -4
  store i64 %sub, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub
  %vmreg.sroa.0.0.extract.trunc = trunc i64 %vmreg.coerce to i32
  store i32 %vmreg.sroa.0.0.extract.trunc, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @"??$PUSH_VREG@$0CA@$00@@YAXAEA_KUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, i64 %vmreg.coerce) #1 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub = add i64 %0, -4
  store i64 %sub, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub
  %vmreg.sroa.0.4.extract.shift = lshr i64 %vmreg.coerce, 32
  %vmreg.sroa.0.4.extract.trunc = trunc i64 %vmreg.sroa.0.4.extract.shift to i32
  store i32 %vmreg.sroa.0.4.extract.trunc, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @"??$PUSH_VREG@$0EA@$0A@@@YAXAEA_KUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, i64 %vmreg.coerce) #1 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub = add i64 %0, -8
  store i64 %sub, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub
  store i64 %vmreg.coerce, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @"??$POP_VREG@$07$0A@@@YAXAEA_KAEAUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, ptr noundef nonnull align 8 dereferenceable(8) %vmreg) #1 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %byte.0.copyload = load i16, ptr %arrayidx, align 1
  %conv.i = trunc i16 %byte.0.copyload to i8
  store i8 %conv.i, ptr %vmreg, align 8, !tbaa !14
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i5 = trunc i64 %1 to i16
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %2
  store i16 %conv.i5, ptr %arrayidx2, align 1
  %3 = load i64, ptr %vsp, align 8, !tbaa !10
  %add = add i64 %3, 2
  store i64 %add, ptr %vsp, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @"??$POP_VREG@$07$00@@YAXAEA_KAEAUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, ptr noundef nonnull align 8 dereferenceable(8) %vmreg) #1 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %byte.0.copyload = load i16, ptr %arrayidx, align 1
  %conv.i = trunc i16 %byte.0.copyload to i8
  %b1 = getelementptr inbounds %struct.anon, ptr %vmreg, i64 0, i32 1
  store i8 %conv.i, ptr %b1, align 1, !tbaa !14
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i5 = trunc i64 %1 to i16
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %2
  store i16 %conv.i5, ptr %arrayidx2, align 1
  %3 = load i64, ptr %vsp, align 8, !tbaa !10
  %add = add i64 %3, 2
  store i64 %add, ptr %vsp, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @"??$POP_VREG@$0BA@$0A@@@YAXAEA_KAEAUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, ptr noundef nonnull align 8 dereferenceable(8) %vmreg) #1 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload = load i16, ptr %arrayidx, align 1
  %1 = load i64, ptr %vmreg, align 8, !tbaa !14
  %and = and i64 %1, -65536
  %conv = zext i16 %value.0.copyload to i64
  %or = or i64 %and, %conv
  store i64 %or, ptr %vmreg, align 8, !tbaa !14
  %2 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i = trunc i64 %2 to i16
  %3 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %3
  store i16 %conv.i, ptr %arrayidx1, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add = add i64 %4, 2
  store i64 %add, ptr %vsp, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$POP_VREG@$0BA@$00@@YAXAEA_KAEAUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, ptr noundef nonnull align 8 dereferenceable(8) %vmreg) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload = load i16, ptr %arrayidx, align 1
  %1 = load i64, ptr %vmreg, align 8, !tbaa !14
  %and = and i64 %1, -4294901761
  %conv.i = zext i16 %value.0.copyload to i64
  %shl.i = shl nuw nsw i64 %conv.i, 16
  %or = or i64 %and, %shl.i
  store i64 %or, ptr %vmreg, align 8, !tbaa !14
  %2 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i7 = trunc i64 %2 to i16
  %3 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %3
  store i16 %conv.i7, ptr %arrayidx3, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add = add i64 %4, 2
  store i64 %add, ptr %vsp, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @"??$POP_VREG@$0BA@$01@@YAXAEA_KAEAUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, ptr noundef nonnull align 8 dereferenceable(8) %vmreg) #1 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload = load i16, ptr %arrayidx, align 1
  %1 = load i64, ptr %vmreg, align 8, !tbaa !14
  %and = and i64 %1, -281470681743361
  %conv.i = zext i16 %value.0.copyload to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %or = or i64 %and, %shl.i
  store i64 %or, ptr %vmreg, align 8, !tbaa !14
  %2 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i7 = trunc i64 %2 to i16
  %3 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %3
  store i16 %conv.i7, ptr %arrayidx3, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add = add i64 %4, 2
  store i64 %add, ptr %vsp, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @"??$POP_VREG@$0BA@$02@@YAXAEA_KAEAUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, ptr noundef nonnull align 8 dereferenceable(8) %vmreg) #1 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload = load i16, ptr %arrayidx, align 1
  %1 = load i64, ptr %vmreg, align 8, !tbaa !14
  %and = and i64 %1, 281474976710655
  %conv.i = zext i16 %value.0.copyload to i64
  %shl.i = shl nuw i64 %conv.i, 48
  %or = or i64 %and, %shl.i
  store i64 %or, ptr %vmreg, align 8, !tbaa !14
  %2 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i7 = trunc i64 %2 to i16
  %3 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %3
  store i16 %conv.i7, ptr %arrayidx3, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add = add i64 %4, 2
  store i64 %add, ptr %vsp, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @"??$POP_VREG@$0CA@$0A@@@YAXAEA_KAEAUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, ptr noundef nonnull align 8 dereferenceable(8) %vmreg) #1 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload = load i32, ptr %arrayidx, align 1
  %1 = load i64, ptr %vmreg, align 8, !tbaa !14
  %and = and i64 %1, -4294967296
  %conv = zext i32 %value.0.copyload to i64
  %or = or i64 %and, %conv
  store i64 %or, ptr %vmreg, align 8, !tbaa !14
  %2 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i = trunc i64 %2 to i32
  %3 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %3
  store i32 %conv.i, ptr %arrayidx1, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add = add i64 %4, 4
  store i64 %add, ptr %vsp, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$POP_VREG@$0CA@$00@@YAXAEA_KAEAUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, ptr noundef nonnull align 8 dereferenceable(8) %vmreg) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload = load i32, ptr %arrayidx, align 1
  %1 = load i64, ptr %vmreg, align 8, !tbaa !14
  %and = and i64 %1, 4294967295
  %conv.i = zext i32 %value.0.copyload to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %or = or i64 %and, %shl.i
  store i64 %or, ptr %vmreg, align 8, !tbaa !14
  %2 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i7 = trunc i64 %2 to i32
  %3 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %3
  store i32 %conv.i7, ptr %arrayidx3, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add = add i64 %4, 4
  store i64 %add, ptr %vsp, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$POP_VREG@$0EA@$0A@@@YAXAEA_KAEAUVirtualRegister@@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp, ptr noundef nonnull align 8 dereferenceable(8) %vmreg) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload = load i64, ptr %arrayidx, align 1
  store i64 %value.0.copyload, ptr %vmreg, align 8, !tbaa !14
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %2
  store i64 %1, ptr %arrayidx1, align 1
  %3 = load i64, ptr %vsp, align 8, !tbaa !10
  %add = add i64 %3, 8
  store i64 %add, ptr %vsp, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @"?PUSH_REG@@YAXAEA_K_K@Z"(ptr nocapture noundef nonnull align 8 dereferenceable(8) %vsp, i64 noundef %reg) #4 {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i = add i64 %0, -8
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i64 %reg, ptr %arrayidx.i, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @"?POP_REG@@YAXAEA_K0@Z"(ptr nocapture noundef nonnull align 8 dereferenceable(8) %vsp, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %reg) #2 {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  store i64 %value.0.copyload.i, ptr %reg, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @"?CPUID@@YAXAEA_K@Z"(ptr nocapture noundef nonnull align 8 dereferenceable(8) %vsp) #5 {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i32
  store i32 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %3 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %value.0.copyload.i) #18, !srcloc !15
  %asmresult = extractvalue { i32, i32, i32, i32 } %3, 0
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %3, 1
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %3, 2
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %3, 3
  %arrayidx.i8 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %2
  store i32 %asmresult, ptr %arrayidx.i8, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i9 = add i64 %4, -4
  store i64 %sub.i9, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i10 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i9
  store i32 %asmresult1, ptr %arrayidx.i10, align 1
  %5 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i11 = add i64 %5, -4
  store i64 %sub.i11, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i12 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i11
  store i32 %asmresult2, ptr %arrayidx.i12, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i13 = add i64 %6, -4
  store i64 %sub.i13, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i14 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i13
  store i32 %asmresult3, ptr %arrayidx.i14, align 1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define dso_local void @"?RDTSC@@YAXAEA_K@Z"(ptr nocapture noundef nonnull align 8 dereferenceable(8) %vsp) #1 {
entry:
  %0 = tail call i64 @llvm.x86.rdtsc()
  %conv = trunc i64 %0 to i32
  %shr.i = lshr i64 %0, 32
  %conv3 = trunc i64 %shr.i to i32
  %1 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i = add i64 %1, -4
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i32 %conv, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i7 = add i64 %2, -4
  store i64 %sub.i7, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i8 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i7
  store i32 %conv3, ptr %arrayidx.i8, align 1
  ret void
}

; Function Attrs: nounwind
declare i64 @llvm.x86.rdtsc() #7

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @"?UPDATE_EFLAGS@@YAXAEA_K_N11111@Z"(ptr nocapture noundef nonnull align 8 dereferenceable(8) %eflags, i1 noundef zeroext %cf, i1 noundef zeroext %pf, i1 noundef zeroext %af, i1 noundef zeroext %zf, i1 noundef zeroext %sf, i1 noundef zeroext %of) local_unnamed_addr #8 {
entry:
  %0 = load i64, ptr %eflags, align 8, !tbaa !10
  %conv = zext i1 %cf to i64
  %or6 = or i64 %0, %conv
  %shl10 = select i1 %pf, i64 4, i64 0
  %shl16 = select i1 %af, i64 16, i64 0
  %shl22 = select i1 %zf, i64 64, i64 0
  %shl28 = select i1 %sf, i64 128, i64 0
  %shl34 = select i1 %of, i64 2048, i64 0
  %and13 = or i64 %shl16, %shl10
  %or17 = or i64 %and13, %shl22
  %1 = or i64 %or17, %shl28
  %2 = or i64 %1, %shl34
  %3 = or i64 %2, %or6
  store i64 %3, ptr %eflags, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$ADD@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #3 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i25 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i26 = load i64, ptr %arrayidx.i25, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %3, ptr %arrayidx.i25, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i28 = add i64 %value.0.copyload.i26, %value.0.copyload.i
  %cmp.i.i.i = icmp ult i64 %add.i28, %value.0.copyload.i
  %cmp1.i.i.i = icmp ult i64 %add.i28, %value.0.copyload.i26
  %5 = or i1 %cmp.i.i.i, %cmp1.i.i.i
  %conv.i.i.i = trunc i64 %add.i28 to i8
  %6 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i.i), !range !16
  %xor.i.i.i = xor i64 %add.i28, %value.0.copyload.i
  %xor1.i.i.i = xor i64 %xor.i.i.i, %value.0.copyload.i26
  %and.i.i.i = and i64 %xor1.i.i.i, 16
  %cmp.i.i25.i = icmp eq i64 %add.i28, 0
  %xor.i.i27.i = lshr i64 %xor.i.i.i, 63
  %shr16.i.i.i = xor i64 %add.i28, %value.0.copyload.i26
  %xor3.i.i.i = lshr i64 %shr16.i.i.i, 63
  %add.i.i.i = add nuw nsw i64 %xor.i.i27.i, %xor3.i.i.i
  %cmp.i.i28.i = icmp eq i64 %add.i.i.i, 2
  %conv.i.i = zext i1 %5 to i64
  %7 = shl nuw nsw i8 %6, 2
  %8 = and i8 %7, 4
  %9 = xor i8 %8, 4
  %shl10.i.i = zext i8 %9 to i64
  %shl22.i.i = select i1 %cmp.i.i25.i, i64 64, i64 0
  %10 = lshr i64 %add.i28, 56
  %shl28.i.i = and i64 %10, 128
  %shl34.i.i = select i1 %cmp.i.i28.i, i64 2048, i64 0
  %or6.i.i = or i64 %shl28.i.i, %shl22.i.i
  %and13.i.i = or i64 %or6.i.i, %and.i.i.i
  %or17.i.i = or i64 %and13.i.i, %conv.i.i
  %11 = or i64 %or17.i.i, %shl34.i.i
  %12 = or i64 %11, %shl10.i.i
  %arrayidx.i29 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i64 %add.i28, ptr %arrayidx.i29, align 1
  %13 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i30 = add i64 %13, -8
  store i64 %sub.i30, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i31 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i30
  store i64 %12, ptr %arrayidx.i31, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$ADD@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i32
  store i32 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 4
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i25 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i26 = load i32, ptr %arrayidx.i25, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i27 = trunc i64 %3 to i32
  store i32 %conv.i.i27, ptr %arrayidx.i25, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i29 = add i32 %value.0.copyload.i26, %value.0.copyload.i
  %cmp.i.i.i = icmp ult i32 %add.i29, %value.0.copyload.i
  %cmp1.i.i.i = icmp ult i32 %add.i29, %value.0.copyload.i26
  %5 = or i1 %cmp.i.i.i, %cmp1.i.i.i
  %conv.i.i.i = trunc i32 %add.i29 to i8
  %6 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i.i), !range !16
  %xor.i.i.i = xor i32 %add.i29, %value.0.copyload.i
  %xor1.i.i.i = xor i32 %xor.i.i.i, %value.0.copyload.i26
  %and.i.i.i = and i32 %xor1.i.i.i, 16
  %cmp.i.i25.i = icmp eq i32 %add.i29, 0
  %xor.i.i27.i = lshr i32 %xor.i.i.i, 31
  %shr16.i.i.i = xor i32 %add.i29, %value.0.copyload.i26
  %xor3.i.i.i = lshr i32 %shr16.i.i.i, 31
  %add.i.i.i = add nuw nsw i32 %xor.i.i27.i, %xor3.i.i.i
  %cmp.i.i28.i = icmp eq i32 %add.i.i.i, 2
  %conv.i.i30 = zext i1 %5 to i64
  %7 = shl nuw nsw i8 %6, 2
  %8 = and i8 %7, 4
  %9 = xor i8 %8, 4
  %shl22.i.i = select i1 %cmp.i.i25.i, i64 64, i64 0
  %10 = lshr i32 %add.i29, 24
  %11 = and i32 %10, 128
  %shl28.i.i = zext i32 %11 to i64
  %shl34.i.i = select i1 %cmp.i.i28.i, i64 2048, i64 0
  %12 = zext i8 %9 to i32
  %13 = or i32 %and.i.i.i, %12
  %and13.i.i = zext i32 %13 to i64
  %or6.i.i = or i64 %shl22.i.i, %shl28.i.i
  %or17.i.i = or i64 %or6.i.i, %conv.i.i30
  %14 = or i64 %or17.i.i, %shl34.i.i
  %15 = or i64 %14, %and13.i.i
  %arrayidx.i31 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i32 %add.i29, ptr %arrayidx.i31, align 1
  %16 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i32 = add i64 %16, -8
  store i64 %sub.i32, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i33 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i32
  store i64 %15, ptr %arrayidx.i33, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$ADD@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i25 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i26 = load i16, ptr %arrayidx.i25, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i27 = trunc i64 %3 to i16
  store i16 %conv.i.i27, ptr %arrayidx.i25, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i29 = add i16 %value.0.copyload.i26, %value.0.copyload.i
  %cmp.i.i.i = icmp ult i16 %add.i29, %value.0.copyload.i
  %cmp4.i.i.i = icmp ult i16 %add.i29, %value.0.copyload.i26
  %5 = or i1 %cmp.i.i.i, %cmp4.i.i.i
  %conv.i.i.i = trunc i16 %add.i29 to i8
  %6 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i.i), !range !16
  %xor4.i.i.i = xor i16 %add.i29, %value.0.copyload.i
  %xor35.i.i.i = xor i16 %xor4.i.i.i, %value.0.copyload.i26
  %7 = and i16 %xor35.i.i.i, 16
  %cmp.i.i25.i = icmp eq i16 %add.i29, 0
  %xor14.i.i.i = lshr i16 %xor4.i.i.i, 15
  %8 = xor i16 %add.i29, %value.0.copyload.i26
  %xor1215.i.i.i = lshr i16 %8, 15
  %narrow.i.i.i = add nuw nsw i16 %xor14.i.i.i, %xor1215.i.i.i
  %cmp.i.i27.i = icmp eq i16 %narrow.i.i.i, 2
  %conv.i.i30 = zext i1 %5 to i64
  %9 = shl nuw nsw i8 %6, 2
  %10 = and i8 %9, 4
  %11 = xor i8 %10, 4
  %shl22.i.i = select i1 %cmp.i.i25.i, i64 64, i64 0
  %12 = lshr i16 %add.i29, 8
  %13 = and i16 %12, 128
  %shl28.i.i = zext i16 %13 to i64
  %shl34.i.i = select i1 %cmp.i.i27.i, i64 2048, i64 0
  %14 = zext i8 %11 to i16
  %15 = or i16 %7, %14
  %and13.i.i = zext i16 %15 to i64
  %or6.i.i = or i64 %shl22.i.i, %shl28.i.i
  %or17.i.i = or i64 %or6.i.i, %conv.i.i30
  %16 = or i64 %or17.i.i, %shl34.i.i
  %17 = or i64 %16, %and13.i.i
  %arrayidx.i31 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i16 %add.i29, ptr %arrayidx.i31, align 1
  %18 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i32 = add i64 %18, -8
  store i64 %sub.i32, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i33 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i32
  store i64 %17, ptr %arrayidx.i33, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$ADD@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %conv.i = trunc i16 %value.0.copyload.i to i8
  %arrayidx.i23 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i24 = load i16, ptr %arrayidx.i23, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i25 = trunc i64 %3 to i16
  store i16 %conv.i.i25, ptr %arrayidx.i23, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %conv.i27 = trunc i16 %value.0.copyload.i24 to i8
  %add.i28 = add i8 %conv.i27, %conv.i
  %cmp.i.i.i = icmp ult i8 %add.i28, %conv.i
  %cmp4.i.i.i = icmp ult i8 %add.i28, %conv.i27
  %5 = or i1 %cmp.i.i.i, %cmp4.i.i.i
  %6 = tail call i8 @llvm.ctpop.i8(i8 %add.i28), !range !16
  %xor4.i.i.i = xor i8 %add.i28, %conv.i
  %xor35.i.i.i = xor i8 %xor4.i.i.i, %conv.i27
  %7 = and i8 %xor35.i.i.i, 16
  %cmp.i.i25.i = icmp eq i8 %add.i28, 0
  %xor14.i.i.i = lshr i8 %xor4.i.i.i, 7
  %8 = xor i8 %add.i28, %conv.i27
  %xor1215.i.i.i = lshr i8 %8, 7
  %narrow.i.i.i = add nuw nsw i8 %xor14.i.i.i, %xor1215.i.i.i
  %cmp.i.i27.i = icmp eq i8 %narrow.i.i.i, 2
  %conv.i.i29 = zext i1 %5 to i64
  %9 = shl nuw nsw i8 %6, 2
  %10 = and i8 %9, 4
  %shl22.i.i = select i1 %cmp.i.i25.i, i64 64, i64 0
  %11 = and i8 %add.i28, -128
  %shl28.i.i = zext i8 %11 to i64
  %shl34.i.i = select i1 %cmp.i.i27.i, i64 2048, i64 0
  %12 = or i8 %10, %7
  %and13.i28.i = xor i8 %12, 4
  %and13.i.i = zext i8 %and13.i28.i to i64
  %or6.i.i = or i64 %shl22.i.i, %shl28.i.i
  %or17.i.i = or i64 %or6.i.i, %conv.i.i29
  %13 = or i64 %or17.i.i, %shl34.i.i
  %14 = or i64 %13, %and13.i.i
  %conv.i30 = zext i8 %add.i28 to i16
  %arrayidx.i31 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i16 %conv.i30, ptr %arrayidx.i31, align 1
  %15 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i32 = add i64 %15, -8
  store i64 %sub.i32, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i33 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i32
  store i64 %14, ptr %arrayidx.i33, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @"?DIV_FLAGS@@YAXAEA_K@Z"(ptr nocapture noundef nonnull align 8 dereferenceable(8) %eflags) local_unnamed_addr #9 {
entry:
  %0 = load i64, ptr @__undef, align 8, !tbaa !10
  %1 = and i64 %0, 255
  %tobool = icmp ne i64 %1, 0
  %2 = load i64, ptr %eflags, align 8, !tbaa !10
  %conv.i27 = zext i1 %tobool to i64
  %or6.i = or i64 %2, %conv.i27
  %3 = select i1 %tobool, i64 2260, i64 0
  %4 = or i64 %or6.i, %3
  store i64 %4, ptr %eflags, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$DIV@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #3 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i49 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i50 = load i64, ptr %arrayidx.i49, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %3, ptr %arrayidx.i49, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i51 = add i64 %4, 8
  store i64 %add.i51, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i52 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i51
  %value.0.copyload.i53 = load i64, ptr %arrayidx.i52, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %5, ptr %arrayidx.i52, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i54 = add i64 %6, 8
  store i64 %add.i54, ptr %vsp, align 8, !tbaa !10
  %7 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %value.0.copyload.i, i64 0
  %8 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %value.0.copyload.i50, i64 0
  %9 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %value.0.copyload.i53, i64 0
  %10 = bitcast <2 x i64> %8 to i128
  %shl.i = shl nuw i128 %10, 64
  %11 = bitcast <2 x i64> %7 to i128
  %or.i = or i128 %shl.i, %11
  %12 = bitcast <2 x i64> %9 to i128
  %or.i.frozen = freeze i128 %or.i
  %.frozen = freeze i128 %12
  %div.i = udiv i128 %or.i.frozen, %.frozen
  %13 = mul i128 %div.i, %.frozen
  %rem.i.decomposed = sub i128 %or.i.frozen, %13
  %conv.i = trunc i128 %div.i to i64
  %conv.i55 = trunc i128 %rem.i.decomposed to i64
  %14 = load i64, ptr @__undef, align 8, !tbaa !10
  %15 = and i64 %14, 255
  %tobool.i = icmp ne i64 %15, 0
  %conv.i27.i = zext i1 %tobool.i to i64
  %16 = select i1 %tobool.i, i64 2260, i64 0
  %17 = or i64 %16, %conv.i27.i
  store i64 %6, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i56 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %6
  store i64 %conv.i, ptr %arrayidx.i56, align 1
  %18 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i57 = add i64 %18, -8
  store i64 %sub.i57, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i58 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i57
  store i64 %conv.i55, ptr %arrayidx.i58, align 1
  %19 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i59 = add i64 %19, -8
  store i64 %sub.i59, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i60 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i59
  store i64 %17, ptr %arrayidx.i60, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$DIV@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i32
  store i32 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 4
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i33 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i34 = load i32, ptr %arrayidx.i33, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i35 = trunc i64 %3 to i32
  store i32 %conv.i.i35, ptr %arrayidx.i33, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i36 = add i64 %4, 4
  store i64 %add.i36, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i37 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i36
  %value.0.copyload.i38 = load i32, ptr %arrayidx.i37, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i39 = trunc i64 %5 to i32
  store i32 %conv.i.i39, ptr %arrayidx.i37, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i40 = add i64 %6, 4
  store i64 %add.i40, ptr %vsp, align 8, !tbaa !10
  %conv.i = zext i32 %value.0.copyload.i to i64
  %conv.i41 = zext i32 %value.0.copyload.i34 to i64
  %conv.i42 = zext i32 %value.0.copyload.i38 to i64
  %shl.i = shl nuw i64 %conv.i41, 32
  %or.i = or i64 %shl.i, %conv.i
  %div.i = udiv i64 %or.i, %conv.i42
  %rem.i = urem i64 %or.i, %conv.i42
  %conv.i43 = trunc i64 %div.i to i32
  %conv.i44 = trunc i64 %rem.i to i32
  %7 = load i64, ptr @__undef, align 8, !tbaa !10
  %8 = and i64 %7, 255
  %tobool.i = icmp ne i64 %8, 0
  %conv.i27.i = zext i1 %tobool.i to i64
  %9 = select i1 %tobool.i, i64 2260, i64 0
  %10 = or i64 %9, %conv.i27.i
  store i64 %6, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i45 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %6
  store i32 %conv.i43, ptr %arrayidx.i45, align 1
  %11 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i46 = add i64 %11, -4
  store i64 %sub.i46, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i47 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i46
  store i32 %conv.i44, ptr %arrayidx.i47, align 1
  %12 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i48 = add i64 %12, -8
  store i64 %sub.i48, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i49 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i48
  store i64 %10, ptr %arrayidx.i49, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$DIV@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i33 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i34 = load i16, ptr %arrayidx.i33, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i35 = trunc i64 %3 to i16
  store i16 %conv.i.i35, ptr %arrayidx.i33, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i36 = add i64 %4, 2
  store i64 %add.i36, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i37 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i36
  %value.0.copyload.i38 = load i16, ptr %arrayidx.i37, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i39 = trunc i64 %5 to i16
  store i16 %conv.i.i39, ptr %arrayidx.i37, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i40 = add i64 %6, 2
  store i64 %add.i40, ptr %vsp, align 8, !tbaa !10
  %conv.i = zext i16 %value.0.copyload.i to i32
  %conv.i42 = zext i16 %value.0.copyload.i38 to i32
  %conv.i43 = zext i16 %value.0.copyload.i34 to i32
  %shl.i = shl nuw i32 %conv.i43, 16
  %or3.i = or i32 %shl.i, %conv.i
  %7 = udiv i32 %or3.i, %conv.i42
  %8 = urem i32 %or3.i, %conv.i42
  %conv.i44 = trunc i32 %7 to i16
  %conv.i45 = trunc i32 %8 to i16
  %9 = load i64, ptr @__undef, align 8, !tbaa !10
  %10 = and i64 %9, 255
  %tobool.i = icmp ne i64 %10, 0
  %conv.i27.i = zext i1 %tobool.i to i64
  %11 = select i1 %tobool.i, i64 2260, i64 0
  %12 = or i64 %11, %conv.i27.i
  store i64 %6, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i46 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %6
  store i16 %conv.i44, ptr %arrayidx.i46, align 1
  %13 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i47 = add i64 %13, -2
  store i64 %sub.i47, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i48 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i47
  store i16 %conv.i45, ptr %arrayidx.i48, align 1
  %14 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i49 = add i64 %14, -8
  store i64 %sub.i49, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i50 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i49
  store i64 %12, ptr %arrayidx.i50, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$DIV@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i31 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i32 = load i16, ptr %arrayidx.i31, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i33 = trunc i64 %3 to i16
  store i16 %conv.i.i33, ptr %arrayidx.i31, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i34 = add i64 %4, 2
  store i64 %add.i34, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i36 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i34
  %value.0.copyload.i37 = load i16, ptr %arrayidx.i36, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i38 = trunc i64 %5 to i16
  store i16 %conv.i.i38, ptr %arrayidx.i36, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i39 = add i64 %6, 2
  store i64 %add.i39, ptr %vsp, align 8, !tbaa !10
  %conv.i41 = and i16 %value.0.copyload.i, 255
  %conv.i43 = and i16 %value.0.copyload.i37, 255
  %7 = shl i16 %value.0.copyload.i32, 8
  %or3.i = or i16 %7, %conv.i41
  %8 = udiv i16 %or3.i, %conv.i43
  %9 = urem i16 %or3.i, %conv.i43
  %conv.i45 = trunc i16 %8 to i8
  %conv.i46 = trunc i16 %9 to i8
  %10 = load i64, ptr @__undef, align 8, !tbaa !10
  %11 = and i64 %10, 255
  %tobool.i = icmp ne i64 %11, 0
  %conv.i27.i = zext i1 %tobool.i to i64
  %12 = select i1 %tobool.i, i64 2260, i64 0
  %13 = or i64 %12, %conv.i27.i
  %sub.i = add i64 %6, 1
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i47 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i8 %conv.i45, ptr %arrayidx.i47, align 1
  %14 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i48 = add i64 %14, -1
  store i64 %sub.i48, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i49 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i48
  store i8 %conv.i46, ptr %arrayidx.i49, align 1
  %15 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i50 = add i64 %15, -8
  store i64 %sub.i50, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i51 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i50
  store i64 %13, ptr %arrayidx.i51, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @"?IDIV_FLAGS@@YAXAEA_K@Z"(ptr nocapture noundef nonnull align 8 dereferenceable(8) %eflags) local_unnamed_addr #9 {
entry:
  %0 = load i64, ptr @__undef, align 8, !tbaa !10
  %1 = and i64 %0, 255
  %tobool.i = icmp ne i64 %1, 0
  %2 = load i64, ptr %eflags, align 8, !tbaa !10
  %conv.i27.i = zext i1 %tobool.i to i64
  %or6.i.i = or i64 %2, %conv.i27.i
  %3 = select i1 %tobool.i, i64 2260, i64 0
  %4 = or i64 %or6.i.i, %3
  store i64 %4, ptr %eflags, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$IDIV@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #3 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i54 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i55 = load i64, ptr %arrayidx.i54, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %3, ptr %arrayidx.i54, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i56 = add i64 %4, 8
  store i64 %add.i56, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i57 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i56
  %value.0.copyload.i58 = load i64, ptr %arrayidx.i57, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %5, ptr %arrayidx.i57, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i59 = add i64 %6, 8
  store i64 %add.i59, ptr %vsp, align 8, !tbaa !10
  %7 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %value.0.copyload.i, i64 0
  %8 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %value.0.copyload.i55, i64 0
  %conv.i = sext i64 %value.0.copyload.i58 to i128
  %9 = bitcast <2 x i64> %8 to i128
  %shl.i = shl nuw i128 %9, 64
  %10 = bitcast <2 x i64> %7 to i128
  %or.i = or i128 %shl.i, %10
  %or.i.frozen = freeze i128 %or.i
  %conv.i.frozen = freeze i128 %conv.i
  %div.i = sdiv i128 %or.i.frozen, %conv.i.frozen
  %11 = mul i128 %div.i, %conv.i.frozen
  %rem.i.decomposed = sub i128 %or.i.frozen, %11
  %conv.i60 = trunc i128 %div.i to i64
  %conv.i61 = trunc i128 %rem.i.decomposed to i64
  %12 = load i64, ptr @__undef, align 8, !tbaa !10
  %13 = and i64 %12, 255
  %tobool.i.i = icmp ne i64 %13, 0
  %conv.i27.i.i = zext i1 %tobool.i.i to i64
  %14 = select i1 %tobool.i.i, i64 2260, i64 0
  %15 = or i64 %14, %conv.i27.i.i
  store i64 %6, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i62 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %6
  store i64 %conv.i60, ptr %arrayidx.i62, align 1
  %16 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i63 = add i64 %16, -8
  store i64 %sub.i63, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i64 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i63
  store i64 %conv.i61, ptr %arrayidx.i64, align 1
  %17 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i65 = add i64 %17, -8
  store i64 %sub.i65, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i66 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i65
  store i64 %15, ptr %arrayidx.i66, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$IDIV@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i32
  store i32 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 4
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i36 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i37 = load i32, ptr %arrayidx.i36, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i38 = trunc i64 %3 to i32
  store i32 %conv.i.i38, ptr %arrayidx.i36, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i39 = add i64 %4, 4
  store i64 %add.i39, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i40 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i39
  %value.0.copyload.i41 = load i32, ptr %arrayidx.i40, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i42 = trunc i64 %5 to i32
  store i32 %conv.i.i42, ptr %arrayidx.i40, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i43 = add i64 %6, 4
  store i64 %add.i43, ptr %vsp, align 8, !tbaa !10
  %conv.i = zext i32 %value.0.copyload.i to i64
  %conv.i44 = zext i32 %value.0.copyload.i37 to i64
  %conv.i45 = sext i32 %value.0.copyload.i41 to i64
  %shl.i = shl nuw i64 %conv.i44, 32
  %or.i = or i64 %shl.i, %conv.i
  %div.i = sdiv i64 %or.i, %conv.i45
  %rem.i = srem i64 %or.i, %conv.i45
  %conv.i46 = trunc i64 %div.i to i32
  %conv.i47 = trunc i64 %rem.i to i32
  %7 = load i64, ptr @__undef, align 8, !tbaa !10
  %8 = and i64 %7, 255
  %tobool.i.i = icmp ne i64 %8, 0
  %conv.i27.i.i = zext i1 %tobool.i.i to i64
  %9 = select i1 %tobool.i.i, i64 2260, i64 0
  %10 = or i64 %9, %conv.i27.i.i
  store i64 %6, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i48 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %6
  store i32 %conv.i46, ptr %arrayidx.i48, align 1
  %11 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i49 = add i64 %11, -4
  store i64 %sub.i49, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i50 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i49
  store i32 %conv.i47, ptr %arrayidx.i50, align 1
  %12 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i51 = add i64 %12, -8
  store i64 %sub.i51, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i52 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i51
  store i64 %10, ptr %arrayidx.i52, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$IDIV@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i36 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i37 = load i16, ptr %arrayidx.i36, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i38 = trunc i64 %3 to i16
  store i16 %conv.i.i38, ptr %arrayidx.i36, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i39 = add i64 %4, 2
  store i64 %add.i39, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i40 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i39
  %value.0.copyload.i41 = load i16, ptr %arrayidx.i40, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i42 = trunc i64 %5 to i16
  store i16 %conv.i.i42, ptr %arrayidx.i40, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i43 = add i64 %6, 2
  store i64 %add.i43, ptr %vsp, align 8, !tbaa !10
  %conv.i = zext i16 %value.0.copyload.i to i32
  %conv.i46 = zext i16 %value.0.copyload.i37 to i32
  %shl.i = shl nuw i32 %conv.i46, 16
  %or3.i = or i32 %shl.i, %conv.i
  %conv.i47 = sext i32 %or3.i to i64
  %conv1.i = sext i16 %value.0.copyload.i41 to i64
  %div.i = sdiv i64 %conv.i47, %conv1.i
  %rem.i = srem i64 %conv.i47, %conv1.i
  %conv.i52 = trunc i64 %div.i to i16
  %conv.i53 = trunc i64 %rem.i to i16
  %7 = load i64, ptr @__undef, align 8, !tbaa !10
  %8 = and i64 %7, 255
  %tobool.i.i = icmp ne i64 %8, 0
  %conv.i27.i.i = zext i1 %tobool.i.i to i64
  %9 = select i1 %tobool.i.i, i64 2260, i64 0
  %10 = or i64 %9, %conv.i27.i.i
  store i64 %6, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i54 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %6
  store i16 %conv.i52, ptr %arrayidx.i54, align 1
  %11 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i55 = add i64 %11, -2
  store i64 %sub.i55, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i56 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i55
  store i16 %conv.i53, ptr %arrayidx.i56, align 1
  %12 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i57 = add i64 %12, -8
  store i64 %sub.i57, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i58 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i57
  store i64 %10, ptr %arrayidx.i58, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$IDIV@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i34 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i35 = load i16, ptr %arrayidx.i34, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i36 = trunc i64 %3 to i16
  store i16 %conv.i.i36, ptr %arrayidx.i34, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i37 = add i64 %4, 2
  store i64 %add.i37, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i39 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i37
  %value.0.copyload.i40 = load i16, ptr %arrayidx.i39, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i41 = trunc i64 %5 to i16
  store i16 %conv.i.i41, ptr %arrayidx.i39, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i42 = add i64 %6, 2
  store i64 %add.i42, ptr %vsp, align 8, !tbaa !10
  %conv.i44 = and i16 %value.0.copyload.i, 255
  %sext = shl i16 %value.0.copyload.i40, 8
  %conv.i46 = ashr exact i16 %sext, 8
  %7 = shl i16 %value.0.copyload.i35, 8
  %or3.i = or i16 %7, %conv.i44
  %div.lhs.trunc.i = sext i16 %or3.i to i32
  %div.rhs.trunc.i = sext i16 %conv.i46 to i32
  %div3.i = sdiv i32 %div.lhs.trunc.i, %div.rhs.trunc.i
  %rem3.i = srem i32 %div.lhs.trunc.i, %div.rhs.trunc.i
  %conv.i50 = trunc i32 %div3.i to i8
  %conv.i51 = trunc i32 %rem3.i to i8
  %8 = load i64, ptr @__undef, align 8, !tbaa !10
  %9 = and i64 %8, 255
  %tobool.i.i = icmp ne i64 %9, 0
  %conv.i27.i.i = zext i1 %tobool.i.i to i64
  %10 = select i1 %tobool.i.i, i64 2260, i64 0
  %11 = or i64 %10, %conv.i27.i.i
  %sub.i = add i64 %6, 1
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i52 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i8 %conv.i50, ptr %arrayidx.i52, align 1
  %12 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i53 = add i64 %12, -1
  store i64 %sub.i53, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i54 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i53
  store i8 %conv.i51, ptr %arrayidx.i54, align 1
  %13 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i55 = add i64 %13, -8
  store i64 %sub.i55, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i56 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i55
  store i64 %11, ptr %arrayidx.i56, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$MUL@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #3 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i39 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i40 = load i64, ptr %arrayidx.i39, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %3, ptr %arrayidx.i39, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i41 = add i64 %4, 8
  store i64 %add.i41, ptr %vsp, align 8, !tbaa !10
  %5 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %value.0.copyload.i, i64 0
  %6 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %value.0.copyload.i40, i64 0
  %7 = bitcast <2 x i64> %5 to i128
  %8 = bitcast <2 x i64> %6 to i128
  %mul.i = mul nuw i128 %8, %7
  %conv.i = trunc i128 %mul.i to i64
  %shr.i = lshr i128 %mul.i, 64
  %conv.i42 = trunc i128 %shr.i to i64
  %cmp.i.i.i = icmp ugt i128 %mul.i, 18446744073709551615
  %9 = load i64, ptr @__undef, align 8, !tbaa !10
  %10 = and i64 %9, 255
  %tobool.not.i = icmp eq i64 %10, 0
  %conv.i27.i = zext i1 %cmp.i.i.i to i64
  %shl28.i.i = select i1 %tobool.not.i, i64 0, i64 128
  %shl34.i.i = select i1 %cmp.i.i.i, i64 2048, i64 0
  %or17.i.i = select i1 %tobool.not.i, i64 0, i64 84
  %11 = or i64 %shl34.i.i, %conv.i27.i
  %or6.i.i = or i64 %11, %shl28.i.i
  %12 = or i64 %or6.i.i, %or17.i.i
  store i64 %4, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i43 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i64 %conv.i, ptr %arrayidx.i43, align 1
  %13 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i44 = add i64 %13, -8
  store i64 %sub.i44, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i45 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i44
  store i64 %conv.i42, ptr %arrayidx.i45, align 1
  %14 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i46 = add i64 %14, -8
  store i64 %sub.i46, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i47 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i46
  store i64 %12, ptr %arrayidx.i47, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$MUL@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i32
  store i32 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 4
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i29 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i30 = load i32, ptr %arrayidx.i29, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i31 = trunc i64 %3 to i32
  store i32 %conv.i.i31, ptr %arrayidx.i29, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i32 = add i64 %4, 4
  store i64 %add.i32, ptr %vsp, align 8, !tbaa !10
  %conv.i = zext i32 %value.0.copyload.i to i64
  %conv.i33 = zext i32 %value.0.copyload.i30 to i64
  %mul.i = mul nuw i64 %conv.i33, %conv.i
  %conv.i34 = trunc i64 %mul.i to i32
  %shr.i = lshr i64 %mul.i, 32
  %conv.i35 = trunc i64 %shr.i to i32
  %cmp.i.i.i = icmp ugt i64 %mul.i, 4294967295
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %6 = and i64 %5, 255
  %tobool.not.i = icmp eq i64 %6, 0
  %conv.i24.i = zext i1 %cmp.i.i.i to i64
  %shl28.i.i = select i1 %tobool.not.i, i64 0, i64 128
  %shl34.i.i = select i1 %cmp.i.i.i, i64 2048, i64 0
  %or17.i.i = select i1 %tobool.not.i, i64 0, i64 84
  %7 = or i64 %shl34.i.i, %conv.i24.i
  %or6.i.i = or i64 %7, %shl28.i.i
  %8 = or i64 %or6.i.i, %or17.i.i
  store i64 %4, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i36 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i32 %conv.i34, ptr %arrayidx.i36, align 1
  %9 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i37 = add i64 %9, -4
  store i64 %sub.i37, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i38 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i37
  store i32 %conv.i35, ptr %arrayidx.i38, align 1
  %10 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i39 = add i64 %10, -8
  store i64 %sub.i39, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i40 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i39
  store i64 %8, ptr %arrayidx.i40, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$MUL@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i29 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i30 = load i16, ptr %arrayidx.i29, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i31 = trunc i64 %3 to i16
  store i16 %conv.i.i31, ptr %arrayidx.i29, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i32 = add i64 %4, 2
  store i64 %add.i32, ptr %vsp, align 8, !tbaa !10
  %conv.i = zext i16 %value.0.copyload.i to i32
  %conv.i33 = zext i16 %value.0.copyload.i30 to i32
  %mul.i = mul nuw i32 %conv.i33, %conv.i
  %conv.i34 = trunc i32 %mul.i to i16
  %5 = lshr i32 %mul.i, 16
  %conv.i36 = trunc i32 %5 to i16
  %cmp.i.i.i = icmp ugt i32 %mul.i, 65535
  %6 = load i64, ptr @__undef, align 8, !tbaa !10
  %7 = and i64 %6, 255
  %tobool.not.i = icmp eq i64 %7, 0
  %conv.i24.i = zext i1 %cmp.i.i.i to i64
  %shl28.i.i = select i1 %tobool.not.i, i64 0, i64 128
  %shl34.i.i = select i1 %cmp.i.i.i, i64 2048, i64 0
  %or17.i.i = select i1 %tobool.not.i, i64 0, i64 84
  %8 = or i64 %shl34.i.i, %conv.i24.i
  %or6.i.i = or i64 %8, %shl28.i.i
  %9 = or i64 %or6.i.i, %or17.i.i
  store i64 %4, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i37 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i16 %conv.i34, ptr %arrayidx.i37, align 1
  %10 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i38 = add i64 %10, -2
  store i64 %sub.i38, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i39 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i38
  store i16 %conv.i36, ptr %arrayidx.i39, align 1
  %11 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i40 = add i64 %11, -8
  store i64 %sub.i40, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i41 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i40
  store i64 %9, ptr %arrayidx.i41, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$MUL@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i28 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i29 = load i16, ptr %arrayidx.i28, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i30 = trunc i64 %3 to i16
  store i16 %conv.i.i30, ptr %arrayidx.i28, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i31 = add i64 %4, 2
  store i64 %add.i31, ptr %vsp, align 8, !tbaa !10
  %conv.i33 = and i16 %value.0.copyload.i, 255
  %conv.i34 = and i16 %value.0.copyload.i29, 255
  %mul.i = mul nuw i16 %conv.i34, %conv.i33
  %conv.i35 = trunc i16 %mul.i to i8
  %5 = lshr i16 %mul.i, 8
  %conv.i37 = trunc i16 %5 to i8
  %cmp.i.i.i = icmp ugt i16 %mul.i, 255
  %6 = load i64, ptr @__undef, align 8, !tbaa !10
  %7 = and i64 %6, 255
  %tobool.not.i = icmp eq i64 %7, 0
  %conv.i24.i = zext i1 %cmp.i.i.i to i64
  %shl28.i.i = select i1 %tobool.not.i, i64 0, i64 128
  %shl34.i.i = select i1 %cmp.i.i.i, i64 2048, i64 0
  %or17.i.i = select i1 %tobool.not.i, i64 0, i64 84
  %8 = or i64 %shl34.i.i, %conv.i24.i
  %or6.i.i = or i64 %8, %shl28.i.i
  %9 = or i64 %or6.i.i, %or17.i.i
  %sub.i = add i64 %4, 1
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i38 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i8 %conv.i35, ptr %arrayidx.i38, align 1
  %10 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i39 = add i64 %10, -1
  store i64 %sub.i39, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i40 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i39
  store i8 %conv.i37, ptr %arrayidx.i40, align 1
  %11 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i41 = add i64 %11, -8
  store i64 %sub.i41, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i42 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i41
  store i64 %9, ptr %arrayidx.i42, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$IMUL@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #3 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i42 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i43 = load i64, ptr %arrayidx.i42, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %3, ptr %arrayidx.i42, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i44 = add i64 %4, 8
  store i64 %add.i44, ptr %vsp, align 8, !tbaa !10
  %conv.i = sext i64 %value.0.copyload.i to i128
  %conv.i45 = sext i64 %value.0.copyload.i43 to i128
  %mul.i = mul nsw i128 %conv.i45, %conv.i
  %conv.i46 = trunc i128 %mul.i to i64
  %shr.i = lshr i128 %mul.i, 64
  %conv.i47 = trunc i128 %shr.i to i64
  %5 = add nsw i128 %mul.i, -9223372036854775808
  %cmp.i.i.i.i = icmp ult i128 %5, -18446744073709551616
  %6 = load i64, ptr @__undef, align 8, !tbaa !10
  %7 = and i64 %6, 255
  %tobool.not.i.i = icmp eq i64 %7, 0
  %conv.i28.i.i = zext i1 %cmp.i.i.i.i to i64
  %8 = lshr i64 %conv.i46, 56
  %shl28.i.i.i = and i64 %8, 128
  %shl34.i.i.i = select i1 %cmp.i.i.i.i, i64 2048, i64 0
  %or17.i.i.i = select i1 %tobool.not.i.i, i64 0, i64 84
  %9 = or i64 %shl28.i.i.i, %conv.i28.i.i
  %or6.i.i.i = or i64 %9, %shl34.i.i.i
  %10 = or i64 %or6.i.i.i, %or17.i.i.i
  store i64 %4, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i48 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i64 %conv.i46, ptr %arrayidx.i48, align 1
  %11 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i49 = add i64 %11, -8
  store i64 %sub.i49, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i50 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i49
  store i64 %conv.i47, ptr %arrayidx.i50, align 1
  %12 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i51 = add i64 %12, -8
  store i64 %sub.i51, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i52 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i51
  store i64 %10, ptr %arrayidx.i52, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$IMUL@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i32
  store i32 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 4
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i30 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i31 = load i32, ptr %arrayidx.i30, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i32 = trunc i64 %3 to i32
  store i32 %conv.i.i32, ptr %arrayidx.i30, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i33 = add i64 %4, 4
  store i64 %add.i33, ptr %vsp, align 8, !tbaa !10
  %conv.i = sext i32 %value.0.copyload.i to i64
  %conv.i34 = sext i32 %value.0.copyload.i31 to i64
  %mul.i = mul nsw i64 %conv.i34, %conv.i
  %conv.i35 = trunc i64 %mul.i to i32
  %shr.i = lshr i64 %mul.i, 32
  %conv.i36 = trunc i64 %shr.i to i32
  %5 = add nsw i64 %mul.i, -2147483648
  %cmp.i.i.i.i = icmp ult i64 %5, -4294967296
  %6 = load i64, ptr @__undef, align 8, !tbaa !10
  %7 = and i64 %6, 255
  %tobool.not.i.i = icmp eq i64 %7, 0
  %conv.i25.i.i = zext i1 %cmp.i.i.i.i to i64
  %8 = lshr i64 %mul.i, 24
  %shl28.i.i.i = and i64 %8, 128
  %shl34.i.i.i = select i1 %cmp.i.i.i.i, i64 2048, i64 0
  %or17.i.i.i = select i1 %tobool.not.i.i, i64 0, i64 84
  %9 = or i64 %shl28.i.i.i, %conv.i25.i.i
  %10 = or i64 %9, %shl34.i.i.i
  %11 = or i64 %10, %or17.i.i.i
  store i64 %4, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i37 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i32 %conv.i35, ptr %arrayidx.i37, align 1
  %12 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i38 = add i64 %12, -4
  store i64 %sub.i38, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i39 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i38
  store i32 %conv.i36, ptr %arrayidx.i39, align 1
  %13 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i40 = add i64 %13, -8
  store i64 %sub.i40, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i41 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i40
  store i64 %11, ptr %arrayidx.i41, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$IMUL@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i30 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i31 = load i16, ptr %arrayidx.i30, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i32 = trunc i64 %3 to i16
  store i16 %conv.i.i32, ptr %arrayidx.i30, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i33 = add i64 %4, 2
  store i64 %add.i33, ptr %vsp, align 8, !tbaa !10
  %conv.i = sext i16 %value.0.copyload.i to i32
  %conv.i34 = sext i16 %value.0.copyload.i31 to i32
  %mul.i = mul nsw i32 %conv.i34, %conv.i
  %conv.i35 = trunc i32 %mul.i to i16
  %5 = lshr i32 %mul.i, 16
  %conv.i37 = trunc i32 %5 to i16
  %6 = add nsw i32 %mul.i, -32768
  %cmp.i.i.i.i = icmp ult i32 %6, -65536
  %7 = load i64, ptr @__undef, align 8, !tbaa !10
  %8 = and i64 %7, 255
  %tobool.not.i.i = icmp eq i64 %8, 0
  %conv.i25.i.i = zext i1 %cmp.i.i.i.i to i64
  %9 = lshr i16 %conv.i35, 8
  %10 = and i16 %9, 128
  %shl28.i.i.i = zext i16 %10 to i64
  %shl34.i.i.i = select i1 %cmp.i.i.i.i, i64 2048, i64 0
  %or17.i.i.i = select i1 %tobool.not.i.i, i64 0, i64 84
  %11 = or i64 %shl34.i.i.i, %conv.i25.i.i
  %12 = or i64 %11, %shl28.i.i.i
  %13 = or i64 %12, %or17.i.i.i
  store i64 %4, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i38 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i16 %conv.i35, ptr %arrayidx.i38, align 1
  %14 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i39 = add i64 %14, -2
  store i64 %sub.i39, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i40 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i39
  store i16 %conv.i37, ptr %arrayidx.i40, align 1
  %15 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i41 = add i64 %15, -8
  store i64 %sub.i41, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i42 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i41
  store i64 %13, ptr %arrayidx.i42, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$IMUL@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i29 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i30 = load i16, ptr %arrayidx.i29, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i31 = trunc i64 %3 to i16
  store i16 %conv.i.i31, ptr %arrayidx.i29, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i32 = add i64 %4, 2
  store i64 %add.i32, ptr %vsp, align 8, !tbaa !10
  %sext = shl i16 %value.0.copyload.i, 8
  %conv.i34 = ashr exact i16 %sext, 8
  %sext45 = shl i16 %value.0.copyload.i30, 8
  %conv.i35 = ashr exact i16 %sext45, 8
  %mul.i = mul nsw i16 %conv.i35, %conv.i34
  %conv.i36 = trunc i16 %mul.i to i8
  %5 = lshr i16 %mul.i, 8
  %conv.i38 = trunc i16 %5 to i8
  %6 = add nsw i16 %mul.i, -128
  %cmp.i.i.i.i = icmp ult i16 %6, -256
  %7 = load i64, ptr @__undef, align 8, !tbaa !10
  %8 = and i64 %7, 255
  %tobool.not.i.i = icmp eq i64 %8, 0
  %9 = and i8 %conv.i36, -128
  %shl34.i.i.i = select i1 %cmp.i.i.i.i, i64 2048, i64 0
  %or17.i.i.i = select i1 %tobool.not.i.i, i64 0, i64 84
  %10 = zext i1 %cmp.i.i.i.i to i8
  %11 = or i8 %9, %10
  %12 = zext i8 %11 to i64
  %13 = or i64 %shl34.i.i.i, %12
  %14 = or i64 %13, %or17.i.i.i
  %sub.i = add i64 %4, 1
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i39 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i8 %conv.i36, ptr %arrayidx.i39, align 1
  %15 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i40 = add i64 %15, -1
  store i64 %sub.i40, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i41 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i40
  store i8 %conv.i38, ptr %arrayidx.i41, align 1
  %16 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i42 = add i64 %16, -8
  store i64 %sub.i42, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i43 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i42
  store i64 %14, ptr %arrayidx.i43, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$NOR@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #3 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i26 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i27 = load i64, ptr %arrayidx.i26, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %3, ptr %arrayidx.i26, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %or.i = or i64 %value.0.copyload.i27, %value.0.copyload.i
  %not.i = xor i64 %or.i, -1
  %conv.i.i.i = trunc i64 %not.i to i8
  %5 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i.i), !range !16
  %cmp.i.i.i = icmp eq i64 %or.i, -1
  %6 = shl nuw nsw i8 %5, 2
  %7 = and i8 %6, 4
  %8 = xor i8 %7, 4
  %shl10.i.i = zext i8 %8 to i64
  %shl22.i.i = select i1 %cmp.i.i.i, i64 64, i64 0
  %9 = lshr i64 %not.i, 56
  %shl28.i.i = and i64 %9, 128
  %or17.i.i = or i64 %shl28.i.i, %shl22.i.i
  %10 = or i64 %or17.i.i, %shl10.i.i
  %arrayidx.i29 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i64 %not.i, ptr %arrayidx.i29, align 1
  %11 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i30 = add i64 %11, -8
  store i64 %sub.i30, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i31 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i30
  store i64 %10, ptr %arrayidx.i31, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$NOR@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i32
  store i32 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 4
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i26 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i27 = load i32, ptr %arrayidx.i26, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i28 = trunc i64 %3 to i32
  store i32 %conv.i.i28, ptr %arrayidx.i26, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %or3.i = or i32 %value.0.copyload.i27, %value.0.copyload.i
  %not.i = xor i32 %or3.i, -1
  %conv.i.i.i = trunc i32 %not.i to i8
  %5 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i.i), !range !16
  %cmp.i.i.i = icmp eq i32 %or3.i, -1
  %6 = shl nuw nsw i8 %5, 2
  %7 = and i8 %6, 4
  %8 = xor i8 %7, 4
  %shl10.i.i = zext i8 %8 to i64
  %shl22.i.i = select i1 %cmp.i.i.i, i64 64, i64 0
  %9 = lshr i32 %not.i, 24
  %10 = and i32 %9, 128
  %shl28.i.i = zext i32 %10 to i64
  %or17.i.i = or i64 %shl22.i.i, %shl28.i.i
  %11 = or i64 %or17.i.i, %shl10.i.i
  %arrayidx.i30 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i32 %not.i, ptr %arrayidx.i30, align 1
  %12 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i31 = add i64 %12, -8
  store i64 %sub.i31, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i32 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i31
  store i64 %11, ptr %arrayidx.i32, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$NOR@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i26 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i27 = load i16, ptr %arrayidx.i26, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i28 = trunc i64 %3 to i16
  store i16 %conv.i.i28, ptr %arrayidx.i26, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %or3.i = or i16 %value.0.copyload.i27, %value.0.copyload.i
  %not.i = xor i16 %or3.i, -1
  %conv.i.i.i = trunc i16 %not.i to i8
  %5 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i.i), !range !16
  %cmp.i.i.i = icmp eq i16 %or3.i, -1
  %6 = shl nuw nsw i8 %5, 2
  %7 = and i8 %6, 4
  %8 = xor i8 %7, 4
  %shl10.i.i = zext i8 %8 to i64
  %shl22.i.i = select i1 %cmp.i.i.i, i64 64, i64 0
  %9 = lshr i16 %not.i, 8
  %10 = and i16 %9, 128
  %shl28.i.i = zext i16 %10 to i64
  %or17.i.i = or i64 %shl22.i.i, %shl28.i.i
  %11 = or i64 %or17.i.i, %shl10.i.i
  %arrayidx.i30 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i16 %not.i, ptr %arrayidx.i30, align 1
  %12 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i31 = add i64 %12, -8
  store i64 %sub.i31, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i32 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i31
  store i64 %11, ptr %arrayidx.i32, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$NOR@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i24 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i25 = load i16, ptr %arrayidx.i24, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i26 = trunc i64 %3 to i16
  store i16 %conv.i.i26, ptr %arrayidx.i24, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %or3.i34 = or i16 %value.0.copyload.i25, %value.0.copyload.i
  %or3.i = trunc i16 %or3.i34 to i8
  %not.i = xor i8 %or3.i, -1
  %5 = tail call i8 @llvm.ctpop.i8(i8 %not.i), !range !16
  %cmp.i.i.i = icmp eq i8 %or3.i, -1
  %6 = shl nuw nsw i8 %5, 2
  %7 = and i8 %6, 4
  %8 = xor i8 %7, 4
  %shl10.i.i = zext i8 %8 to i64
  %shl22.i.i = select i1 %cmp.i.i.i, i64 64, i64 0
  %9 = and i8 %not.i, -128
  %shl28.i.i = zext i8 %9 to i64
  %or17.i.i = or i64 %shl22.i.i, %shl28.i.i
  %10 = or i64 %or17.i.i, %shl10.i.i
  %conv.i29 = zext i8 %not.i to i16
  %arrayidx.i30 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i16 %conv.i29, ptr %arrayidx.i30, align 1
  %11 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i31 = add i64 %11, -8
  store i64 %sub.i31, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i32 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i31
  store i64 %10, ptr %arrayidx.i32, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$NAND@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #3 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i26 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i27 = load i64, ptr %arrayidx.i26, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %3, ptr %arrayidx.i26, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %and.i = and i64 %value.0.copyload.i27, %value.0.copyload.i
  %not.i = xor i64 %and.i, -1
  %conv.i.i.i.i = trunc i64 %not.i to i8
  %5 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i.i.i), !range !16
  %cmp.i.i.i.i = icmp eq i64 %and.i, -1
  %6 = shl nuw nsw i8 %5, 2
  %7 = and i8 %6, 4
  %8 = xor i8 %7, 4
  %shl10.i.i.i = zext i8 %8 to i64
  %shl22.i.i.i = select i1 %cmp.i.i.i.i, i64 64, i64 0
  %9 = lshr i64 %not.i, 56
  %shl28.i.i.i = and i64 %9, 128
  %or17.i.i.i = or i64 %shl28.i.i.i, %shl22.i.i.i
  %10 = or i64 %or17.i.i.i, %shl10.i.i.i
  %arrayidx.i29 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i64 %not.i, ptr %arrayidx.i29, align 1
  %11 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i30 = add i64 %11, -8
  store i64 %sub.i30, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i31 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i30
  store i64 %10, ptr %arrayidx.i31, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$NAND@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i32
  store i32 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 4
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i26 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i27 = load i32, ptr %arrayidx.i26, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i28 = trunc i64 %3 to i32
  store i32 %conv.i.i28, ptr %arrayidx.i26, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %and3.i = and i32 %value.0.copyload.i27, %value.0.copyload.i
  %not.i = xor i32 %and3.i, -1
  %conv.i.i.i.i = trunc i32 %not.i to i8
  %5 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i.i.i), !range !16
  %cmp.i.i.i.i = icmp eq i32 %and3.i, -1
  %6 = shl nuw nsw i8 %5, 2
  %7 = and i8 %6, 4
  %8 = xor i8 %7, 4
  %shl10.i.i.i = zext i8 %8 to i64
  %shl22.i.i.i = select i1 %cmp.i.i.i.i, i64 64, i64 0
  %9 = lshr i32 %not.i, 24
  %10 = and i32 %9, 128
  %shl28.i.i.i = zext i32 %10 to i64
  %or17.i.i.i = or i64 %shl22.i.i.i, %shl28.i.i.i
  %11 = or i64 %or17.i.i.i, %shl10.i.i.i
  %arrayidx.i30 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i32 %not.i, ptr %arrayidx.i30, align 1
  %12 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i31 = add i64 %12, -8
  store i64 %sub.i31, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i32 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i31
  store i64 %11, ptr %arrayidx.i32, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$NAND@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i26 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i27 = load i16, ptr %arrayidx.i26, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i28 = trunc i64 %3 to i16
  store i16 %conv.i.i28, ptr %arrayidx.i26, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %and3.i = and i16 %value.0.copyload.i27, %value.0.copyload.i
  %not.i = xor i16 %and3.i, -1
  %conv.i.i.i.i = trunc i16 %not.i to i8
  %5 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i.i.i), !range !16
  %cmp.i.i.i.i = icmp eq i16 %and3.i, -1
  %6 = shl nuw nsw i8 %5, 2
  %7 = and i8 %6, 4
  %8 = xor i8 %7, 4
  %shl10.i.i.i = zext i8 %8 to i64
  %shl22.i.i.i = select i1 %cmp.i.i.i.i, i64 64, i64 0
  %9 = lshr i16 %not.i, 8
  %10 = and i16 %9, 128
  %shl28.i.i.i = zext i16 %10 to i64
  %or17.i.i.i = or i64 %shl22.i.i.i, %shl28.i.i.i
  %11 = or i64 %or17.i.i.i, %shl10.i.i.i
  %arrayidx.i30 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i16 %not.i, ptr %arrayidx.i30, align 1
  %12 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i31 = add i64 %12, -8
  store i64 %sub.i31, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i32 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i31
  store i64 %11, ptr %arrayidx.i32, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$NAND@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i24 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i25 = load i16, ptr %arrayidx.i24, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i26 = trunc i64 %3 to i16
  store i16 %conv.i.i26, ptr %arrayidx.i24, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %and3.i34 = and i16 %value.0.copyload.i25, %value.0.copyload.i
  %and3.i = trunc i16 %and3.i34 to i8
  %not.i = xor i8 %and3.i, -1
  %5 = tail call i8 @llvm.ctpop.i8(i8 %not.i), !range !16
  %cmp.i.i.i.i = icmp eq i8 %and3.i, -1
  %6 = shl nuw nsw i8 %5, 2
  %7 = and i8 %6, 4
  %8 = xor i8 %7, 4
  %shl10.i.i.i = zext i8 %8 to i64
  %shl22.i.i.i = select i1 %cmp.i.i.i.i, i64 64, i64 0
  %9 = and i8 %not.i, -128
  %shl28.i.i.i = zext i8 %9 to i64
  %or17.i.i.i = or i64 %shl22.i.i.i, %shl28.i.i.i
  %10 = or i64 %or17.i.i.i, %shl10.i.i.i
  %conv.i29 = zext i8 %not.i to i16
  %arrayidx.i30 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i16 %conv.i29, ptr %arrayidx.i30, align 1
  %11 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i31 = add i64 %11, -8
  store i64 %sub.i31, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i32 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i31
  store i64 %10, ptr %arrayidx.i32, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHL@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #3 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i48 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i49 = load i16, ptr %arrayidx.i48, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %3 to i16
  store i16 %conv.i.i, ptr %arrayidx.i48, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i50 = add i64 %4, 2
  store i64 %add.i50, ptr %vsp, align 8, !tbaa !10
  %conv7 = zext i16 %value.0.copyload.i49 to i64
  %shl = shl i64 %value.0.copyload.i, %conv7
  %and.i.i = and i64 %conv7, 63
  %cmp.i.i = icmp eq i64 %and.i.i, 1
  %retval.0.v.i = select i1 %cmp.i.i, i64 %value.0.copyload.i, i64 %shl
  %conv.i.i51 = trunc i64 %shl to i8
  %5 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i51), !range !16
  %6 = load i64, ptr @__undef, align 8, !tbaa !10
  %7 = and i64 %6, 255
  %tobool12.not = icmp eq i64 %7, 0
  %cmp.i.i52 = icmp eq i64 %shl, 0
  %8 = xor i64 %shl, %value.0.copyload.i
  %retval.0.v.i.lobit = lshr i64 %retval.0.v.i, 63
  %9 = shl nuw nsw i8 %5, 2
  %10 = and i8 %9, 4
  %11 = xor i8 %10, 4
  %shl10.i = zext i8 %11 to i64
  %shl16.i = select i1 %tobool12.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i52, i64 64, i64 0
  %12 = lshr i64 %shl, 56
  %shl28.i = and i64 %12, 128
  %13 = lshr i64 %8, 52
  %shl34.i = and i64 %13, 2048
  %and13.i = or i64 %shl28.i, %shl22.i
  %or17.i = or i64 %and13.i, %shl34.i
  %14 = or i64 %or17.i, %retval.0.v.i.lobit
  %15 = or i64 %14, %shl10.i
  %16 = or i64 %15, %shl16.i
  %sub.i = add i64 %4, -6
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i56 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i64 %shl, ptr %arrayidx.i56, align 1
  %17 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i57 = add i64 %17, -8
  store i64 %sub.i57, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i58 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i57
  store i64 %16, ptr %arrayidx.i58, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHL@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i32
  store i32 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 4
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i48 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i49 = load i16, ptr %arrayidx.i48, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i50 = trunc i64 %3 to i16
  store i16 %conv.i.i50, ptr %arrayidx.i48, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i51 = add i64 %4, 2
  store i64 %add.i51, ptr %vsp, align 8, !tbaa !10
  %conv7 = zext i16 %value.0.copyload.i49 to i32
  %shl = shl i32 %value.0.copyload.i, %conv7
  %and3.i.i = and i32 %conv7, 31
  %cmp.i.i = icmp eq i32 %and3.i.i, 1
  %retval.0.v.i = select i1 %cmp.i.i, i32 %value.0.copyload.i, i32 %shl
  %conv.i.i52 = trunc i32 %shl to i8
  %5 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i52), !range !16
  %6 = load i64, ptr @__undef, align 8, !tbaa !10
  %7 = and i64 %6, 255
  %tobool12.not = icmp eq i64 %7, 0
  %cmp.i.i53 = icmp eq i32 %shl, 0
  %8 = xor i32 %shl, %value.0.copyload.i
  %retval.0.v.i.lobit = lshr i32 %retval.0.v.i, 31
  %conv.i56 = zext i32 %retval.0.v.i.lobit to i64
  %9 = shl nuw nsw i8 %5, 2
  %10 = and i8 %9, 4
  %11 = xor i8 %10, 4
  %shl10.i = zext i8 %11 to i64
  %shl16.i = select i1 %tobool12.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i53, i64 64, i64 0
  %12 = lshr i32 %shl, 24
  %13 = and i32 %12, 128
  %shl28.i = zext i32 %13 to i64
  %14 = lshr i32 %8, 20
  %15 = and i32 %14, 2048
  %shl34.i = zext i32 %15 to i64
  %and13.i = or i64 %shl22.i, %shl28.i
  %or17.i = or i64 %and13.i, %shl34.i
  %16 = or i64 %or17.i, %conv.i56
  %17 = or i64 %16, %shl10.i
  %18 = or i64 %17, %shl16.i
  %sub.i = add i64 %4, -2
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i57 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i32 %shl, ptr %arrayidx.i57, align 1
  %19 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i58 = add i64 %19, -8
  store i64 %sub.i58, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i59 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i58
  store i64 %18, ptr %arrayidx.i59, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHL@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i52 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i53 = load i16, ptr %arrayidx.i52, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i54 = trunc i64 %3 to i16
  store i16 %conv.i.i54, ptr %arrayidx.i52, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i55 = add i64 %4, 2
  store i64 %add.i55, ptr %vsp, align 8, !tbaa !10
  %conv7 = zext i16 %value.0.copyload.i to i32
  %conv8 = zext i16 %value.0.copyload.i53 to i32
  %shl = shl i32 %conv7, %conv8
  %conv9 = trunc i32 %shl to i16
  %and3.i.i = and i16 %value.0.copyload.i53, 31
  %cmp.i.i = icmp eq i16 %and3.i.i, 1
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %cmp.i.i.i = icmp slt i16 %value.0.copyload.i, 0
  br label %"??$CF_SHL@G@@YA_NGGG@Z.exit"

if.else.i:                                        ; preds = %entry
  %cmp.i18.i = icmp ult i16 %and3.i.i, 16
  br i1 %cmp.i18.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.else.i
  %cmp.i.i19.i = icmp slt i16 %conv9, 0
  br label %"??$CF_SHL@G@@YA_NGGG@Z.exit"

if.end9.i:                                        ; preds = %if.else.i
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %6 = and i64 %5, 255
  %tobool.i = icmp ne i64 %6, 0
  br label %"??$CF_SHL@G@@YA_NGGG@Z.exit"

"??$CF_SHL@G@@YA_NGGG@Z.exit":                    ; preds = %if.then.i, %if.then7.i, %if.end9.i
  %retval.0.i = phi i1 [ %cmp.i.i.i, %if.then.i ], [ %cmp.i.i19.i, %if.then7.i ], [ %tobool.i, %if.end9.i ]
  %conv.i.i56 = trunc i32 %shl to i8
  %7 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i56), !range !16
  %8 = load i64, ptr @__undef, align 8, !tbaa !10
  %9 = and i64 %8, 255
  %tobool14.not = icmp eq i64 %9, 0
  %cmp.i.i57 = icmp eq i32 %shl, 0
  %10 = xor i16 %value.0.copyload.i, %conv9
  %conv.i60 = zext i1 %retval.0.i to i64
  %11 = shl nuw nsw i8 %7, 2
  %12 = and i8 %11, 4
  %13 = xor i8 %12, 4
  %shl10.i = zext i8 %13 to i64
  %shl16.i = select i1 %tobool14.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i57, i64 64, i64 0
  %14 = lshr i32 %shl, 24
  %15 = and i32 %14, 128
  %shl28.i = zext i32 %15 to i64
  %16 = lshr i16 %10, 4
  %17 = and i16 %16, 2048
  %shl34.i = zext i16 %17 to i64
  %and13.i = or i64 %shl22.i, %shl28.i
  %or17.i = or i64 %and13.i, %shl34.i
  %18 = or i64 %or17.i, %shl10.i
  %19 = or i64 %18, %conv.i60
  %20 = or i64 %19, %shl16.i
  store i64 %4, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i61 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i16 %conv9, ptr %arrayidx.i61, align 1
  %21 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i62 = add i64 %21, -8
  store i64 %sub.i62, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i63 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i62
  store i64 %20, ptr %arrayidx.i63, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHL@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %conv.i = trunc i16 %value.0.copyload.i to i8
  %arrayidx.i51 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i52 = load i16, ptr %arrayidx.i51, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i53 = trunc i64 %3 to i16
  store i16 %conv.i.i53, ptr %arrayidx.i51, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i54 = add i64 %4, 2
  store i64 %add.i54, ptr %vsp, align 8, !tbaa !10
  %conv.i55 = trunc i16 %value.0.copyload.i52 to i8
  %conv.i.mask = and i16 %value.0.copyload.i, 255
  %conv6 = zext i16 %conv.i.mask to i32
  %conv.i55.mask = and i16 %value.0.copyload.i52, 255
  %conv7 = zext i16 %conv.i55.mask to i32
  %shl = shl i32 %conv6, %conv7
  %conv8 = trunc i32 %shl to i8
  %and3.i.i = and i8 %conv.i55, 31
  %cmp.i.i = icmp eq i8 %and3.i.i, 1
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %cmp.i.i.i = icmp slt i8 %conv.i, 0
  br label %"??$CF_SHL@E@@YA_NEEE@Z.exit"

if.else.i:                                        ; preds = %entry
  %cmp.i18.i = icmp ult i8 %and3.i.i, 8
  br i1 %cmp.i18.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.else.i
  %cmp.i.i19.i = icmp slt i8 %conv8, 0
  br label %"??$CF_SHL@E@@YA_NEEE@Z.exit"

if.end9.i:                                        ; preds = %if.else.i
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %6 = and i64 %5, 255
  %tobool.i = icmp ne i64 %6, 0
  br label %"??$CF_SHL@E@@YA_NEEE@Z.exit"

"??$CF_SHL@E@@YA_NEEE@Z.exit":                    ; preds = %if.then.i, %if.then7.i, %if.end9.i
  %retval.0.i = phi i1 [ %cmp.i.i.i, %if.then.i ], [ %cmp.i.i19.i, %if.then7.i ], [ %tobool.i, %if.end9.i ]
  %7 = tail call i8 @llvm.ctpop.i8(i8 %conv8), !range !16
  %8 = load i64, ptr @__undef, align 8, !tbaa !10
  %9 = and i64 %8, 255
  %tobool13.not = icmp eq i64 %9, 0
  %cmp.i.i58 = icmp eq i32 %shl, 0
  %10 = xor i8 %conv8, %conv.i
  %conv.i61 = zext i1 %retval.0.i to i64
  %11 = shl nuw nsw i8 %7, 2
  %12 = and i8 %11, 4
  %13 = xor i8 %12, 4
  %shl10.i = zext i8 %13 to i64
  %shl16.i = select i1 %tobool13.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i58, i64 64, i64 0
  %14 = lshr i32 %shl, 24
  %15 = and i32 %14, 128
  %shl28.i = zext i32 %15 to i64
  %16 = and i8 %10, -128
  %17 = zext i8 %16 to i64
  %shl34.i = shl nuw nsw i64 %17, 4
  %18 = or i64 %shl22.i, %shl28.i
  %or17.i = or i64 %18, %shl34.i
  %and13.i = or i64 %or17.i, %shl10.i
  %19 = or i64 %and13.i, %shl16.i
  %20 = or i64 %19, %conv.i61
  %conv31 = trunc i32 %shl to i16
  store i64 %4, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i63 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i16 %conv31, ptr %arrayidx.i63, align 1
  %21 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i64 = add i64 %21, -8
  store i64 %sub.i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i65 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i64
  store i64 %20, ptr %arrayidx.i65, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHR@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #3 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i44 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i45 = load i16, ptr %arrayidx.i44, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %3 to i16
  store i16 %conv.i.i, ptr %arrayidx.i44, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i46 = add i64 %4, 2
  store i64 %add.i46, ptr %vsp, align 8, !tbaa !10
  %conv7 = zext i16 %value.0.copyload.i45 to i64
  %shr = lshr i64 %value.0.copyload.i, %conv7
  %and.i.i = and i64 %conv7, 63
  %cmp.i.i = icmp eq i64 %and.i.i, 1
  %retval.0.v.v.i = select i1 %cmp.i.i, i64 %value.0.copyload.i, i64 %shr
  %retval.0.v.i = and i64 %retval.0.v.v.i, 1
  %conv.i.i47 = trunc i64 %shr to i8
  %5 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i47), !range !16
  %6 = load i64, ptr @__undef, align 8, !tbaa !10
  %7 = and i64 %6, 255
  %tobool12.not = icmp eq i64 %7, 0
  %cmp.i.i48 = icmp eq i64 %shr, 0
  %8 = shl nuw nsw i8 %5, 2
  %9 = and i8 %8, 4
  %10 = xor i8 %9, 4
  %shl10.i = zext i8 %10 to i64
  %shl16.i = select i1 %tobool12.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i48, i64 64, i64 0
  %11 = lshr i64 %value.0.copyload.i, 52
  %shl34.i = and i64 %11, 2048
  %and13.i = or i64 %shl22.i, %shl34.i
  %or17.i = or i64 %and13.i, %retval.0.v.i
  %12 = or i64 %or17.i, %shl10.i
  %13 = or i64 %12, %shl16.i
  %sub.i = add i64 %4, -6
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i50 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i64 %shr, ptr %arrayidx.i50, align 1
  %14 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i51 = add i64 %14, -8
  store i64 %sub.i51, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i52 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i51
  store i64 %13, ptr %arrayidx.i52, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHR@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i32
  store i32 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 4
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i44 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i45 = load i16, ptr %arrayidx.i44, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i46 = trunc i64 %3 to i16
  store i16 %conv.i.i46, ptr %arrayidx.i44, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i47 = add i64 %4, 2
  store i64 %add.i47, ptr %vsp, align 8, !tbaa !10
  %conv7 = zext i16 %value.0.copyload.i45 to i32
  %shr = lshr i32 %value.0.copyload.i, %conv7
  %and3.i.i = and i32 %conv7, 31
  %cmp.i.i = icmp eq i32 %and3.i.i, 1
  %retval.0.v.v.i = select i1 %cmp.i.i, i32 %value.0.copyload.i, i32 %shr
  %retval.0.v.i = and i32 %retval.0.v.v.i, 1
  %conv.i.i48 = trunc i32 %shr to i8
  %5 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i48), !range !16
  %6 = load i64, ptr @__undef, align 8, !tbaa !10
  %7 = and i64 %6, 255
  %tobool12.not = icmp eq i64 %7, 0
  %cmp.i.i49 = icmp eq i32 %shr, 0
  %conv.i50 = zext i32 %retval.0.v.i to i64
  %8 = shl nuw nsw i8 %5, 2
  %9 = and i8 %8, 4
  %10 = xor i8 %9, 4
  %shl10.i = zext i8 %10 to i64
  %shl16.i = select i1 %tobool12.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i49, i64 64, i64 0
  %11 = lshr i32 %value.0.copyload.i, 20
  %12 = and i32 %11, 2048
  %shl34.i = zext i32 %12 to i64
  %and13.i = or i64 %shl22.i, %shl34.i
  %or17.i = or i64 %and13.i, %conv.i50
  %13 = or i64 %or17.i, %shl10.i
  %14 = or i64 %13, %shl16.i
  %sub.i = add i64 %4, -2
  store i64 %sub.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i51 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i
  store i32 %shr, ptr %arrayidx.i51, align 1
  %15 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i52 = add i64 %15, -8
  store i64 %sub.i52, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i53 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i52
  store i64 %14, ptr %arrayidx.i53, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHR@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i47 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i48 = load i16, ptr %arrayidx.i47, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i49 = trunc i64 %3 to i16
  store i16 %conv.i.i49, ptr %arrayidx.i47, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i50 = add i64 %4, 2
  store i64 %add.i50, ptr %vsp, align 8, !tbaa !10
  %conv7 = zext i16 %value.0.copyload.i to i32
  %conv8 = zext i16 %value.0.copyload.i48 to i32
  %shr = lshr i32 %conv7, %conv8
  %conv9 = trunc i32 %shr to i16
  %and3.i.i = and i16 %value.0.copyload.i48, 31
  %cmp.i.i = icmp eq i16 %and3.i.i, 1
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %and3.i20.i = and i16 %value.0.copyload.i, 1
  %cmp.i21.i = icmp ne i16 %and3.i20.i, 0
  br label %"??$CF_SHR@G@@YA_NGGG@Z.exit"

if.else.i:                                        ; preds = %entry
  %cmp.i22.i = icmp ult i16 %and3.i.i, 16
  br i1 %cmp.i22.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %if.else.i
  %and3.i23.i = and i16 %conv9, 1
  %cmp.i24.i = icmp ne i16 %and3.i23.i, 0
  br label %"??$CF_SHR@G@@YA_NGGG@Z.exit"

if.end11.i:                                       ; preds = %if.else.i
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %6 = and i64 %5, 255
  %tobool.i = icmp ne i64 %6, 0
  br label %"??$CF_SHR@G@@YA_NGGG@Z.exit"

"??$CF_SHR@G@@YA_NGGG@Z.exit":                    ; preds = %if.then.i, %if.then8.i, %if.end11.i
  %retval.0.i = phi i1 [ %cmp.i21.i, %if.then.i ], [ %cmp.i24.i, %if.then8.i ], [ %tobool.i, %if.end11.i ]
  %conv.i.i51 = trunc i32 %shr to i8
  %7 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i51), !range !16
  %8 = load i64, ptr @__undef, align 8, !tbaa !10
  %9 = and i64 %8, 255
  %tobool14.not = icmp eq i64 %9, 0
  %cmp.i.i52 = icmp eq i32 %shr, 0
  %conv.i53 = zext i1 %retval.0.i to i64
  %10 = shl nuw nsw i8 %7, 2
  %11 = and i8 %10, 4
  %12 = xor i8 %11, 4
  %shl10.i = zext i8 %12 to i64
  %shl16.i = select i1 %tobool14.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i52, i64 64, i64 0
  %13 = lshr i16 %value.0.copyload.i, 4
  %14 = and i16 %13, 2048
  %shl34.i = zext i16 %14 to i64
  %and13.i = or i64 %shl22.i, %shl34.i
  %or17.i = or i64 %and13.i, %shl10.i
  %15 = or i64 %or17.i, %conv.i53
  %16 = or i64 %15, %shl16.i
  store i64 %4, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i54 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i16 %conv9, ptr %arrayidx.i54, align 1
  %17 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i55 = add i64 %17, -8
  store i64 %sub.i55, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i56 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i55
  store i64 %16, ptr %arrayidx.i56, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHR@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i46 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i47 = load i16, ptr %arrayidx.i46, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i48 = trunc i64 %3 to i16
  store i16 %conv.i.i48, ptr %arrayidx.i46, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i49 = add i64 %4, 2
  store i64 %add.i49, ptr %vsp, align 8, !tbaa !10
  %conv.i50 = trunc i16 %value.0.copyload.i47 to i8
  %conv.i.mask = and i16 %value.0.copyload.i, 255
  %conv6 = zext i16 %conv.i.mask to i32
  %conv.i50.mask = and i16 %value.0.copyload.i47, 255
  %conv7 = zext i16 %conv.i50.mask to i32
  %shr = lshr i32 %conv6, %conv7
  %conv8 = trunc i32 %shr to i8
  %and3.i.i = and i8 %conv.i50, 31
  %cmp.i.i = icmp eq i8 %and3.i.i, 1
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %and3.i20.i60 = and i16 %value.0.copyload.i, 1
  %cmp.i21.i = icmp ne i16 %and3.i20.i60, 0
  br label %"??$CF_SHR@E@@YA_NEEE@Z.exit"

if.else.i:                                        ; preds = %entry
  %cmp.i22.i = icmp ult i8 %and3.i.i, 8
  br i1 %cmp.i22.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %if.else.i
  %and3.i23.i = and i8 %conv8, 1
  %cmp.i24.i = icmp ne i8 %and3.i23.i, 0
  br label %"??$CF_SHR@E@@YA_NEEE@Z.exit"

if.end11.i:                                       ; preds = %if.else.i
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %6 = and i64 %5, 255
  %tobool.i = icmp ne i64 %6, 0
  br label %"??$CF_SHR@E@@YA_NEEE@Z.exit"

"??$CF_SHR@E@@YA_NEEE@Z.exit":                    ; preds = %if.then.i, %if.then8.i, %if.end11.i
  %retval.0.i = phi i1 [ %cmp.i21.i, %if.then.i ], [ %cmp.i24.i, %if.then8.i ], [ %tobool.i, %if.end11.i ]
  %7 = tail call i8 @llvm.ctpop.i8(i8 %conv8), !range !16
  %8 = load i64, ptr @__undef, align 8, !tbaa !10
  %9 = and i64 %8, 255
  %tobool13.not = icmp eq i64 %9, 0
  %cmp.i.i53 = icmp eq i32 %shr, 0
  %conv.i54 = zext i1 %retval.0.i to i64
  %10 = shl nuw nsw i8 %7, 2
  %11 = and i8 %10, 4
  %12 = xor i8 %11, 4
  %shl10.i = zext i8 %12 to i64
  %shl16.i = select i1 %tobool13.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i53, i64 64, i64 0
  %13 = shl i16 %value.0.copyload.i, 4
  %14 = and i16 %13, 2048
  %shl34.i = zext i16 %14 to i64
  %and13.i = or i64 %shl22.i, %shl34.i
  %or17.i = or i64 %and13.i, %shl10.i
  %15 = or i64 %or17.i, %conv.i54
  %16 = or i64 %15, %shl16.i
  %conv28 = trunc i32 %shr to i16
  store i64 %4, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i56 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %4
  store i16 %conv28, ptr %arrayidx.i56, align 1
  %17 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i57 = add i64 %17, -8
  store i64 %sub.i57, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i58 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i57
  store i64 %16, ptr %arrayidx.i58, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHLD@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i42 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i43 = load i64, ptr %arrayidx.i42, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %3, ptr %arrayidx.i42, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i44 = add i64 %4, 8
  store i64 %add.i44, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i45 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i44
  %value.0.copyload.i46 = load i16, ptr %arrayidx.i45, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %5 to i16
  store i16 %conv.i.i, ptr %arrayidx.i45, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i47 = add i64 %6, 2
  store i64 %add.i47, ptr %vsp, align 8, !tbaa !10
  %7 = and i16 %value.0.copyload.i46, 63
  %and.i = zext i16 %7 to i64
  %shl.i = shl i64 %value.0.copyload.i, %and.i
  %sub.i = sub nuw nsw i64 64, %and.i
  %shr.i = lshr i64 %value.0.copyload.i43, %sub.i
  %or.i = or i64 %shr.i, %shl.i
  %conv.i.i48 = trunc i64 %or.i to i8
  %8 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i48), !range !16
  %9 = load i64, ptr @__undef, align 8, !tbaa !10
  %10 = and i64 %9, 255
  %tobool.not = icmp eq i64 %10, 0
  %cmp.i.i = icmp eq i64 %or.i, 0
  %11 = xor i64 %or.i, %value.0.copyload.i
  %12 = lshr i64 %value.0.copyload.i, %sub.i
  %conv.i51 = and i64 %12, 1
  %13 = shl nuw nsw i8 %8, 2
  %14 = and i8 %13, 4
  %15 = xor i8 %14, 4
  %shl10.i = zext i8 %15 to i64
  %shl16.i = select i1 %tobool.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i, i64 64, i64 0
  %16 = lshr i64 %or.i, 56
  %shl28.i = and i64 %16, 128
  %17 = lshr i64 %11, 52
  %shl34.i = and i64 %17, 2048
  %and13.i = or i64 %shl22.i, %conv.i51
  %or17.i = or i64 %and13.i, %shl28.i
  %18 = or i64 %or17.i, %shl16.i
  %19 = or i64 %18, %shl34.i
  %20 = or i64 %19, %shl10.i
  %sub.i52 = add i64 %6, -6
  store i64 %sub.i52, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i53 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i52
  store i64 %or.i, ptr %arrayidx.i53, align 1
  %21 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i54 = add i64 %21, -8
  store i64 %sub.i54, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i55 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i54
  store i64 %20, ptr %arrayidx.i55, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHLD@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i32
  store i32 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 4
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i42 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i43 = load i32, ptr %arrayidx.i42, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i44 = trunc i64 %3 to i32
  store i32 %conv.i.i44, ptr %arrayidx.i42, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i45 = add i64 %4, 4
  store i64 %add.i45, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i46 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i45
  %value.0.copyload.i47 = load i16, ptr %arrayidx.i46, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i48 = trunc i64 %5 to i16
  store i16 %conv.i.i48, ptr %arrayidx.i46, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i49 = add i64 %6, 2
  store i64 %add.i49, ptr %vsp, align 8, !tbaa !10
  %7 = and i16 %value.0.copyload.i47, 31
  %conv.i = zext i32 %value.0.copyload.i to i64
  %conv1.i = zext i16 %7 to i32
  %shl.i = shl i32 %value.0.copyload.i, %conv1.i
  %narrow = sub nuw nsw i16 32, %7
  %conv.i50 = zext i32 %value.0.copyload.i43 to i64
  %conv1.i51 = zext i16 %narrow to i64
  %shr.i = lshr i64 %conv.i50, %conv1.i51
  %conv2.i52 = trunc i64 %shr.i to i32
  %or3.i = or i32 %shl.i, %conv2.i52
  %conv.i.i53 = trunc i32 %or3.i to i8
  %8 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i53), !range !16
  %9 = load i64, ptr @__undef, align 8, !tbaa !10
  %10 = and i64 %9, 255
  %tobool.not = icmp eq i64 %10, 0
  %cmp.i.i = icmp eq i32 %or3.i, 0
  %11 = xor i32 %or3.i, %value.0.copyload.i
  %12 = lshr i64 %conv.i, %conv1.i51
  %conv.i57 = and i64 %12, 1
  %13 = shl nuw nsw i8 %8, 2
  %14 = and i8 %13, 4
  %15 = xor i8 %14, 4
  %shl10.i = zext i8 %15 to i64
  %shl16.i = select i1 %tobool.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i, i64 64, i64 0
  %16 = lshr i32 %or3.i, 24
  %17 = and i32 %16, 128
  %shl28.i = zext i32 %17 to i64
  %18 = lshr i32 %11, 20
  %19 = and i32 %18, 2048
  %shl34.i = zext i32 %19 to i64
  %and13.i = or i64 %shl16.i, %conv.i57
  %or17.i = or i64 %and13.i, %shl22.i
  %20 = or i64 %or17.i, %shl28.i
  %21 = or i64 %20, %shl34.i
  %22 = or i64 %21, %shl10.i
  %sub.i58 = add i64 %6, -2
  store i64 %sub.i58, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i59 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i58
  store i32 %or3.i, ptr %arrayidx.i59, align 1
  %23 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i60 = add i64 %23, -8
  store i64 %sub.i60, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i61 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i60
  store i64 %22, ptr %arrayidx.i61, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHLD@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i42 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i43 = load i16, ptr %arrayidx.i42, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i44 = trunc i64 %3 to i16
  store i16 %conv.i.i44, ptr %arrayidx.i42, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i45 = add i64 %4, 2
  store i64 %add.i45, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i46 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i45
  %value.0.copyload.i47 = load i16, ptr %arrayidx.i46, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i48 = trunc i64 %5 to i16
  store i16 %conv.i.i48, ptr %arrayidx.i46, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i49 = add i64 %6, 2
  store i64 %add.i49, ptr %vsp, align 8, !tbaa !10
  %and3.i = and i16 %value.0.copyload.i47, 31
  %conv.i = zext i16 %value.0.copyload.i to i64
  %conv1.i = zext i16 %and3.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, %conv1.i
  %sub.i = sub nsw i16 16, %and3.i
  %conv.i50 = zext i16 %value.0.copyload.i43 to i64
  %conv1.i51 = zext i16 %sub.i to i64
  %shr.i = lshr i64 %conv.i50, %conv1.i51
  %or3.i63 = or i64 %shr.i, %shl.i
  %or3.i = trunc i64 %or3.i63 to i16
  %conv.i.i53 = trunc i64 %or3.i63 to i8
  %7 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i53), !range !16
  %8 = load i64, ptr @__undef, align 8, !tbaa !10
  %9 = and i64 %8, 255
  %tobool.not = icmp eq i64 %9, 0
  %cmp.i.i = icmp eq i16 %or3.i, 0
  %10 = xor i16 %value.0.copyload.i, %or3.i
  %11 = lshr i64 %conv.i, %conv1.i51
  %conv.i57 = and i64 %11, 1
  %12 = shl nuw nsw i8 %7, 2
  %13 = and i8 %12, 4
  %14 = xor i8 %13, 4
  %shl10.i = zext i8 %14 to i64
  %shl16.i = select i1 %tobool.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i, i64 64, i64 0
  %15 = lshr i64 %or3.i63, 8
  %shl28.i = and i64 %15, 128
  %16 = lshr i16 %10, 4
  %17 = and i16 %16, 2048
  %shl34.i = zext i16 %17 to i64
  %and13.i = or i64 %shl28.i, %conv.i57
  %or17.i = or i64 %and13.i, %shl16.i
  %18 = or i64 %or17.i, %shl22.i
  %19 = or i64 %18, %shl34.i
  %20 = or i64 %19, %shl10.i
  store i64 %6, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i59 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %6
  store i16 %or3.i, ptr %arrayidx.i59, align 1
  %21 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i60 = add i64 %21, -8
  store i64 %sub.i60, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i61 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i60
  store i64 %20, ptr %arrayidx.i61, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHLD@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i8, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i8
  store i8 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 1
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i42 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i43 = load i8, ptr %arrayidx.i42, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i44 = trunc i64 %3 to i8
  store i8 %conv.i.i44, ptr %arrayidx.i42, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i45 = add i64 %4, 1
  store i64 %add.i45, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i46 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i45
  %value.0.copyload.i47 = load i16, ptr %arrayidx.i46, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i48 = trunc i64 %5 to i16
  store i16 %conv.i.i48, ptr %arrayidx.i46, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i49 = add i64 %6, 2
  store i64 %add.i49, ptr %vsp, align 8, !tbaa !10
  %conv = trunc i16 %value.0.copyload.i47 to i8
  %and3.i = and i8 %conv, 31
  %conv.i = zext i8 %value.0.copyload.i to i64
  %conv1.i = zext i8 %and3.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, %conv1.i
  %sub.i = sub nsw i8 8, %and3.i
  %conv.i50 = zext i8 %value.0.copyload.i43 to i64
  %conv1.i51 = zext i8 %sub.i to i64
  %shr.i = lshr i64 %conv.i50, %conv1.i51
  %or3.i62 = or i64 %shr.i, %shl.i
  %or3.i = trunc i64 %or3.i62 to i8
  %7 = tail call i8 @llvm.ctpop.i8(i8 %or3.i), !range !16
  %8 = load i64, ptr @__undef, align 8, !tbaa !10
  %9 = and i64 %8, 255
  %tobool.not = icmp eq i64 %9, 0
  %cmp.i.i = icmp eq i8 %or3.i, 0
  %10 = xor i8 %value.0.copyload.i, %or3.i
  %11 = lshr i64 %conv.i, %conv1.i51
  %conv.i56 = and i64 %11, 1
  %12 = shl nuw nsw i8 %7, 2
  %13 = and i8 %12, 4
  %14 = xor i8 %13, 4
  %shl10.i = zext i8 %14 to i64
  %shl16.i = select i1 %tobool.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i, i64 64, i64 0
  %shl28.i = and i64 %or3.i62, 128
  %15 = and i8 %10, -128
  %16 = zext i8 %15 to i64
  %shl34.i = shl nuw nsw i64 %16, 4
  %17 = or i64 %shl16.i, %shl28.i
  %or17.i = or i64 %17, %shl22.i
  %and13.i = or i64 %or17.i, %shl34.i
  %18 = or i64 %and13.i, %shl10.i
  %19 = or i64 %18, %conv.i56
  %sub.i57 = add i64 %6, 1
  store i64 %sub.i57, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i58 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i57
  store i8 %or3.i, ptr %arrayidx.i58, align 1
  %20 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i59 = add i64 %20, -8
  store i64 %sub.i59, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i60 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i59
  store i64 %19, ptr %arrayidx.i60, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHRD@_K@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i42 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i43 = load i64, ptr %arrayidx.i42, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %3, ptr %arrayidx.i42, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i44 = add i64 %4, 8
  store i64 %add.i44, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i45 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i44
  %value.0.copyload.i46 = load i16, ptr %arrayidx.i45, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %5 to i16
  store i16 %conv.i.i, ptr %arrayidx.i45, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i47 = add i64 %6, 2
  store i64 %add.i47, ptr %vsp, align 8, !tbaa !10
  %7 = and i16 %value.0.copyload.i46, 63
  %and.i = zext i16 %7 to i64
  %or.i = tail call i64 @llvm.fshr.i64(i64 %value.0.copyload.i43, i64 %value.0.copyload.i, i64 %and.i)
  %sub.i.i.i = add nsw i64 %and.i, -1
  %conv.i.i48 = trunc i64 %or.i to i8
  %8 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i48), !range !16
  %9 = load i64, ptr @__undef, align 8, !tbaa !10
  %10 = and i64 %9, 255
  %tobool.not = icmp eq i64 %10, 0
  %cmp.i.i = icmp eq i64 %or.i, 0
  %11 = xor i64 %or.i, %value.0.copyload.i
  %12 = lshr i64 %value.0.copyload.i, %sub.i.i.i
  %conv.i51 = and i64 %12, 1
  %13 = shl nuw nsw i8 %8, 2
  %14 = and i8 %13, 4
  %15 = xor i8 %14, 4
  %shl10.i = zext i8 %15 to i64
  %shl16.i = select i1 %tobool.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i, i64 64, i64 0
  %16 = lshr i64 %or.i, 56
  %shl28.i = and i64 %16, 128
  %17 = lshr i64 %11, 52
  %shl34.i = and i64 %17, 2048
  %and13.i = or i64 %shl28.i, %shl22.i
  %or17.i = or i64 %and13.i, %conv.i51
  %18 = or i64 %or17.i, %shl34.i
  %19 = or i64 %18, %shl16.i
  %20 = or i64 %19, %shl10.i
  %sub.i52 = add i64 %6, -6
  store i64 %sub.i52, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i53 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i52
  store i64 %or.i, ptr %arrayidx.i53, align 1
  %21 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i54 = add i64 %21, -8
  store i64 %sub.i54, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i55 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i54
  store i64 %20, ptr %arrayidx.i55, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHRD@I@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i32
  store i32 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 4
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i42 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i43 = load i32, ptr %arrayidx.i42, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i44 = trunc i64 %3 to i32
  store i32 %conv.i.i44, ptr %arrayidx.i42, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i45 = add i64 %4, 4
  store i64 %add.i45, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i46 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i45
  %value.0.copyload.i47 = load i16, ptr %arrayidx.i46, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i48 = trunc i64 %5 to i16
  store i16 %conv.i.i48, ptr %arrayidx.i46, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i49 = add i64 %6, 2
  store i64 %add.i49, ptr %vsp, align 8, !tbaa !10
  %7 = and i16 %value.0.copyload.i47, 31
  %and3.i = zext i16 %7 to i32
  %sub.i = sub nuw nsw i32 32, %and3.i
  %conv.i = zext i32 %value.0.copyload.i43 to i64
  %conv1.i = zext i32 %sub.i to i64
  %shl.i = shl nuw i64 %conv.i, %conv1.i
  %conv2.i = trunc i64 %shl.i to i32
  %conv.i50 = zext i32 %value.0.copyload.i to i64
  %shr.i = lshr i32 %value.0.copyload.i, %and3.i
  %or3.i = or i32 %shr.i, %conv2.i
  %sub.i.i.i = add nsw i32 %and3.i, -1
  %conv1.i.i.i = zext i32 %sub.i.i.i to i64
  %conv.i.i53 = trunc i32 %or3.i to i8
  %8 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i53), !range !16
  %9 = load i64, ptr @__undef, align 8, !tbaa !10
  %10 = and i64 %9, 255
  %tobool.not = icmp eq i64 %10, 0
  %cmp.i.i = icmp eq i32 %or3.i, 0
  %11 = xor i32 %or3.i, %value.0.copyload.i
  %12 = lshr i64 %conv.i50, %conv1.i.i.i
  %conv.i57 = and i64 %12, 1
  %13 = shl nuw nsw i8 %8, 2
  %14 = and i8 %13, 4
  %15 = xor i8 %14, 4
  %shl10.i = zext i8 %15 to i64
  %shl16.i = select i1 %tobool.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i, i64 64, i64 0
  %16 = lshr i32 %or3.i, 24
  %17 = and i32 %16, 128
  %shl28.i = zext i32 %17 to i64
  %18 = lshr i32 %11, 20
  %19 = and i32 %18, 2048
  %shl34.i = zext i32 %19 to i64
  %and13.i = or i64 %shl16.i, %conv.i57
  %or17.i = or i64 %and13.i, %shl22.i
  %20 = or i64 %or17.i, %shl28.i
  %21 = or i64 %20, %shl34.i
  %22 = or i64 %21, %shl10.i
  %sub.i58 = add i64 %6, -2
  store i64 %sub.i58, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i59 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i58
  store i32 %or3.i, ptr %arrayidx.i59, align 1
  %23 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i60 = add i64 %23, -8
  store i64 %sub.i60, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i61 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i60
  store i64 %22, ptr %arrayidx.i61, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHRD@G@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i16, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i16
  store i16 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 2
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i42 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i43 = load i16, ptr %arrayidx.i42, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i44 = trunc i64 %3 to i16
  store i16 %conv.i.i44, ptr %arrayidx.i42, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i45 = add i64 %4, 2
  store i64 %add.i45, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i46 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i45
  %value.0.copyload.i47 = load i16, ptr %arrayidx.i46, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i48 = trunc i64 %5 to i16
  store i16 %conv.i.i48, ptr %arrayidx.i46, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i49 = add i64 %6, 2
  store i64 %add.i49, ptr %vsp, align 8, !tbaa !10
  %and3.i = and i16 %value.0.copyload.i47, 31
  %sub.i = sub nsw i16 16, %and3.i
  %conv.i = zext i16 %value.0.copyload.i43 to i64
  %conv1.i = zext i16 %sub.i to i64
  %shl.i = shl i64 %conv.i, %conv1.i
  %conv.i50 = zext i16 %value.0.copyload.i to i64
  %conv1.i51 = zext i16 %and3.i to i64
  %shr.i = lshr i64 %conv.i50, %conv1.i51
  %or3.i63 = or i64 %shl.i, %shr.i
  %or3.i = trunc i64 %or3.i63 to i16
  %sub.i.i.i = add nsw i16 %and3.i, -1
  %conv1.i.i.i = zext i16 %sub.i.i.i to i64
  %conv.i.i53 = trunc i64 %or3.i63 to i8
  %7 = tail call i8 @llvm.ctpop.i8(i8 %conv.i.i53), !range !16
  %8 = load i64, ptr @__undef, align 8, !tbaa !10
  %9 = and i64 %8, 255
  %tobool.not = icmp eq i64 %9, 0
  %cmp.i.i = icmp eq i16 %or3.i, 0
  %10 = xor i16 %value.0.copyload.i, %or3.i
  %11 = lshr i64 %conv.i50, %conv1.i.i.i
  %conv.i57 = and i64 %11, 1
  %12 = shl nuw nsw i8 %7, 2
  %13 = and i8 %12, 4
  %14 = xor i8 %13, 4
  %shl10.i = zext i8 %14 to i64
  %shl16.i = select i1 %tobool.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i, i64 64, i64 0
  %15 = lshr i64 %or3.i63, 8
  %shl28.i = and i64 %15, 128
  %16 = lshr i16 %10, 4
  %17 = and i16 %16, 2048
  %shl34.i = zext i16 %17 to i64
  %and13.i = or i64 %shl28.i, %conv.i57
  %or17.i = or i64 %and13.i, %shl16.i
  %18 = or i64 %or17.i, %shl22.i
  %19 = or i64 %18, %shl34.i
  %20 = or i64 %19, %shl10.i
  store i64 %6, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i59 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %6
  store i16 %or3.i, ptr %arrayidx.i59, align 1
  %21 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i60 = add i64 %21, -8
  store i64 %sub.i60, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i61 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i60
  store i64 %20, ptr %arrayidx.i61, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @"??$SHRD@E@@YAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %vsp) #0 comdat {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i8, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i = trunc i64 %1 to i8
  store i8 %conv.i.i, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 1
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i42 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i
  %value.0.copyload.i43 = load i8, ptr %arrayidx.i42, align 1
  %3 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i44 = trunc i64 %3 to i8
  store i8 %conv.i.i44, ptr %arrayidx.i42, align 1
  %4 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i45 = add i64 %4, 1
  store i64 %add.i45, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i46 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %add.i45
  %value.0.copyload.i47 = load i16, ptr %arrayidx.i46, align 1
  %5 = load i64, ptr @__undef, align 8, !tbaa !10
  %conv.i.i48 = trunc i64 %5 to i16
  store i16 %conv.i.i48, ptr %arrayidx.i46, align 1
  %6 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i49 = add i64 %6, 2
  store i64 %add.i49, ptr %vsp, align 8, !tbaa !10
  %conv = trunc i16 %value.0.copyload.i47 to i8
  %and3.i = and i8 %conv, 31
  %sub.i = sub nsw i8 8, %and3.i
  %conv.i = zext i8 %value.0.copyload.i43 to i64
  %conv1.i = zext i8 %sub.i to i64
  %shl.i = shl i64 %conv.i, %conv1.i
  %conv.i50 = zext i8 %value.0.copyload.i to i64
  %conv1.i51 = zext i8 %and3.i to i64
  %shr.i = lshr i64 %conv.i50, %conv1.i51
  %or3.i62 = or i64 %shl.i, %shr.i
  %or3.i = trunc i64 %or3.i62 to i8
  %sub.i.i.i = add nsw i8 %and3.i, -1
  %conv1.i.i.i = zext i8 %sub.i.i.i to i64
  %7 = tail call i8 @llvm.ctpop.i8(i8 %or3.i), !range !16
  %8 = load i64, ptr @__undef, align 8, !tbaa !10
  %9 = and i64 %8, 255
  %tobool.not = icmp eq i64 %9, 0
  %cmp.i.i = icmp eq i8 %or3.i, 0
  %10 = xor i8 %value.0.copyload.i, %or3.i
  %11 = lshr i64 %conv.i50, %conv1.i.i.i
  %conv.i56 = and i64 %11, 1
  %12 = shl nuw nsw i8 %7, 2
  %13 = and i8 %12, 4
  %14 = xor i8 %13, 4
  %shl10.i = zext i8 %14 to i64
  %shl16.i = select i1 %tobool.not, i64 0, i64 16
  %shl22.i = select i1 %cmp.i.i, i64 64, i64 0
  %shl28.i = and i64 %or3.i62, 128
  %15 = and i8 %10, -128
  %16 = zext i8 %15 to i64
  %shl34.i = shl nuw nsw i64 %16, 4
  %17 = or i64 %shl16.i, %shl28.i
  %or17.i = or i64 %17, %shl22.i
  %and13.i = or i64 %or17.i, %shl34.i
  %18 = or i64 %and13.i, %shl10.i
  %19 = or i64 %18, %conv.i56
  %sub.i57 = add i64 %6, 1
  store i64 %sub.i57, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i58 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i57
  store i8 %or3.i, ptr %arrayidx.i58, align 1
  %20 = load i64, ptr %vsp, align 8, !tbaa !10
  %sub.i59 = add i64 %20, -8
  store i64 %sub.i59, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i60 = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %sub.i59
  store i64 %19, ptr %arrayidx.i60, align 1
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @"?JMP@@YAXAEA_K0@Z"(ptr nocapture noundef nonnull align 8 dereferenceable(8) %vsp, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %vip) #2 {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  store i64 %value.0.copyload.i, ptr %vip, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @"?JCC_DEC@@YAXAEA_K0@Z"(ptr nocapture noundef nonnull align 8 dereferenceable(8) %vsp, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %vip) #2 {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %sub = add i64 %value.0.copyload.i, -4
  store i64 %sub, ptr %vip, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @"?JCC_INC@@YAXAEA_K0@Z"(ptr nocapture noundef nonnull align 8 dereferenceable(8) %vsp, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %vip) #2 {
entry:
  %0 = load i64, ptr %vsp, align 8, !tbaa !10
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @RAM, i64 0, i64 %0
  %value.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %1 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %1, ptr %arrayidx.i, align 1
  %2 = load i64, ptr %vsp, align 8, !tbaa !10
  %add.i = add i64 %2, 8
  store i64 %add.i, ptr %vsp, align 8, !tbaa !10
  %add = add i64 %value.0.copyload.i, 4
  store i64 %add, ptr %vip, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @retainPointers() local_unnamed_addr #10 {
entry:
  %call = tail call i64 @KeepReturn(i64 noundef 0, i64 noundef 0) #19
  %conv = trunc i64 %call to i8
  store i8 %conv, ptr @RAM, align 1, !tbaa !14
  store i8 0, ptr @GS, align 1, !tbaa !14
  store i8 0, ptr @FS, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress noduplicate nofree nosync nounwind willreturn memory(none)
declare dso_local i64 @KeepReturn(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @ExternalFunctionRetain(i64 noundef %rcx, i64 noundef %rdx, i64 noundef %r8, i64 noundef %r9) local_unnamed_addr #12 {
entry:
  %call = tail call i64 @ExternalFunction(i64 noundef %rcx, i64 noundef %rdx, i64 noundef %r8, i64 noundef %r9) #19
  ret i64 %call
}

; Function Attrs: mustprogress noduplicate nofree nosync nounwind willreturn memory(none)
declare dso_local i64 @ExternalFunction(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @VirtualStubEmpty(ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %rax, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %rbx, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %rcx, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %rdx, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %rsi, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %rdi, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %rbp, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %rsp, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %r8, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %r9, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %r10, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %r11, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %r12, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %r13, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %r14, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %r15, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %eflags, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %vsp, ptr noalias nocapture noundef nonnull readnone align 8 dereferenceable(8) %vip, ptr noalias nocapture noundef readnone %vmregs) local_unnamed_addr #13 {
entry:
  ret i64 0
}

; Function Attrs: alwaysinline mustprogress uwtable
define dso_local i64 @VirtualFunction(ptr noalias noundef nonnull align 8 dereferenceable(8) %rax, ptr noalias noundef nonnull align 8 dereferenceable(8) %rbx, ptr noalias noundef nonnull align 8 dereferenceable(8) %rcx, ptr noalias noundef nonnull align 8 dereferenceable(8) %rdx, ptr noalias noundef nonnull align 8 dereferenceable(8) %rsi, ptr noalias noundef nonnull align 8 dereferenceable(8) %rdi, ptr noalias noundef nonnull align 8 dereferenceable(8) %rbp, ptr noalias noundef nonnull align 8 dereferenceable(8) %rsp, ptr noalias noundef nonnull align 8 dereferenceable(8) %r8, ptr noalias noundef nonnull align 8 dereferenceable(8) %r9, ptr noalias noundef nonnull align 8 dereferenceable(8) %r10, ptr noalias noundef nonnull align 8 dereferenceable(8) %r11, ptr noalias noundef nonnull align 8 dereferenceable(8) %r12, ptr noalias noundef nonnull align 8 dereferenceable(8) %r13, ptr noalias noundef nonnull align 8 dereferenceable(8) %r14, ptr noalias noundef nonnull align 8 dereferenceable(8) %r15, ptr noalias noundef nonnull align 8 dereferenceable(8) %eflags) local_unnamed_addr #0 {
entry:
  %vmregs = alloca [30 x %struct.VirtualRegister], align 16
  %vip = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %vmregs) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %vmregs, i8 0, i64 240, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vip) #7
  store i64 0, ptr %vip, align 8, !tbaa !10
  %call = call i64 @VirtualStub(ptr noundef nonnull align 8 dereferenceable(8) %rax, ptr noundef nonnull align 8 dereferenceable(8) %rbx, ptr noundef nonnull align 8 dereferenceable(8) %rcx, ptr noundef nonnull align 8 dereferenceable(8) %rdx, ptr noundef nonnull align 8 dereferenceable(8) %rsi, ptr noundef nonnull align 8 dereferenceable(8) %rdi, ptr noundef nonnull align 8 dereferenceable(8) %rbp, ptr noundef nonnull align 8 dereferenceable(8) %rsp, ptr noundef nonnull align 8 dereferenceable(8) %r8, ptr noundef nonnull align 8 dereferenceable(8) %r9, ptr noundef nonnull align 8 dereferenceable(8) %r10, ptr noundef nonnull align 8 dereferenceable(8) %r11, ptr noundef nonnull align 8 dereferenceable(8) %r12, ptr noundef nonnull align 8 dereferenceable(8) %r13, ptr noundef nonnull align 8 dereferenceable(8) %r14, ptr noundef nonnull align 8 dereferenceable(8) %r15, ptr noundef nonnull align 8 dereferenceable(8) %eflags, ptr noundef nonnull align 8 dereferenceable(8) %rsp, ptr noundef nonnull align 8 dereferenceable(8) %vip, ptr noundef nonnull %vmregs)
  %0 = load i64, ptr @__undef, align 8, !tbaa !10
  store i64 %0, ptr %eflags, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vip) #7
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %vmregs) #7
  ret i64 %call
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

declare dso_local i64 @VirtualStub(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define dso_local i64 @SlicePC(i64 noundef %rax, i64 noundef %rbx, i64 noundef %rcx, i64 noundef %rdx, i64 noundef %rsi, i64 noundef %rdi, i64 noundef %rbp, i64 noundef %rsp, i64 noundef %r8, i64 noundef %r9, i64 noundef %r10, i64 noundef %r11, i64 noundef %r12, i64 noundef %r13, i64 noundef %r14, i64 noundef %r15, i64 noundef %eflags) local_unnamed_addr #16 {
entry:
  %eflags.addr = alloca i64, align 8
  %r15.addr = alloca i64, align 8
  %r14.addr = alloca i64, align 8
  %r13.addr = alloca i64, align 8
  %r12.addr = alloca i64, align 8
  %r11.addr = alloca i64, align 8
  %r10.addr = alloca i64, align 8
  %r9.addr = alloca i64, align 8
  %r8.addr = alloca i64, align 8
  %rsp.addr = alloca i64, align 8
  %rbp.addr = alloca i64, align 8
  %rdi.addr = alloca i64, align 8
  %rsi.addr = alloca i64, align 8
  %rdx.addr = alloca i64, align 8
  %rcx.addr = alloca i64, align 8
  %rbx.addr = alloca i64, align 8
  %rax.addr = alloca i64, align 8
  %vmregs = alloca [30 x %struct.VirtualRegister], align 16
  %vip = alloca i64, align 8
  %vsp = alloca i64, align 8
  store i64 %eflags, ptr %eflags.addr, align 8, !tbaa !10
  store i64 %r15, ptr %r15.addr, align 8, !tbaa !10
  store i64 %r14, ptr %r14.addr, align 8, !tbaa !10
  store i64 %r13, ptr %r13.addr, align 8, !tbaa !10
  store i64 %r12, ptr %r12.addr, align 8, !tbaa !10
  store i64 %r11, ptr %r11.addr, align 8, !tbaa !10
  store i64 %r10, ptr %r10.addr, align 8, !tbaa !10
  store i64 %r9, ptr %r9.addr, align 8, !tbaa !10
  store i64 %r8, ptr %r8.addr, align 8, !tbaa !10
  store i64 %rsp, ptr %rsp.addr, align 8, !tbaa !10
  store i64 %rbp, ptr %rbp.addr, align 8, !tbaa !10
  store i64 %rdi, ptr %rdi.addr, align 8, !tbaa !10
  store i64 %rsi, ptr %rsi.addr, align 8, !tbaa !10
  store i64 %rdx, ptr %rdx.addr, align 8, !tbaa !10
  store i64 %rcx, ptr %rcx.addr, align 8, !tbaa !10
  store i64 %rbx, ptr %rbx.addr, align 8, !tbaa !10
  store i64 %rax, ptr %rax.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %vmregs) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %vmregs, i8 0, i64 240, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vip) #7
  store i64 0, ptr %vip, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsp) #7
  store i64 %rsp, ptr %vsp, align 8, !tbaa !10
  %call = call i64 @VirtualStub(ptr noundef nonnull align 8 dereferenceable(8) %rax.addr, ptr noundef nonnull align 8 dereferenceable(8) %rbx.addr, ptr noundef nonnull align 8 dereferenceable(8) %rcx.addr, ptr noundef nonnull align 8 dereferenceable(8) %rdx.addr, ptr noundef nonnull align 8 dereferenceable(8) %rsi.addr, ptr noundef nonnull align 8 dereferenceable(8) %rdi.addr, ptr noundef nonnull align 8 dereferenceable(8) %rbp.addr, ptr noundef nonnull align 8 dereferenceable(8) %rsp.addr, ptr noundef nonnull align 8 dereferenceable(8) %r8.addr, ptr noundef nonnull align 8 dereferenceable(8) %r9.addr, ptr noundef nonnull align 8 dereferenceable(8) %r10.addr, ptr noundef nonnull align 8 dereferenceable(8) %r11.addr, ptr noundef nonnull align 8 dereferenceable(8) %r12.addr, ptr noundef nonnull align 8 dereferenceable(8) %r13.addr, ptr noundef nonnull align 8 dereferenceable(8) %r14.addr, ptr noundef nonnull align 8 dereferenceable(8) %r15.addr, ptr noundef nonnull align 8 dereferenceable(8) %eflags.addr, ptr noundef nonnull align 8 dereferenceable(8) %vsp, ptr noundef nonnull align 8 dereferenceable(8) %vip, ptr noundef nonnull %vmregs)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vip) #7
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %vmregs) #7
  ret i64 %call
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #17

attributes #0 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { alwaysinline mustprogress memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noduplicate nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind memory(none) }
attributes #19 = { noduplicate nomerge nounwind willreturn memory(none) }

!llvm.linker.options = !{!0, !1, !2, !3, !4}
!llvm.module.flags = !{!5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!1 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!2 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!3 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!4 = !{!"/DEFAULTLIB:libcpmt.lib"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 1, !"MaxTLSAlign", i32 65536}
!9 = !{!"clang version 17.0.3"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long long", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!12, !12, i64 0}
!15 = !{i64 2152155170, i64 2152155206, i64 2152155230}
!16 = !{i8 0, i8 9}
