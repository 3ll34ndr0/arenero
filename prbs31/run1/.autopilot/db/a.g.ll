; ModuleID = '/home/lean/vivado/tp/prbs31/vivado/prbs31/run1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prbs31.a = internal global i32 2, align 4        ; [#uses=5 type=i32*]

; [#uses=0]
define void @prbs31(i32* %hw_out) nounwind uwtable {
  %1 = alloca i32*, align 8                       ; [#uses=2 type=i32**]
  %newbit = alloca i32, align 4                   ; [#uses=2 type=i32*]
  store i32* %hw_out, i32** %1, align 8
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !25), !dbg !26 ; [debug line = 3:24] [debug variable = hw_out]
  call void @llvm.dbg.declare(metadata !{i32* %newbit}, metadata !27), !dbg !29 ; [debug line = 5:13] [debug variable = newbit]
  %2 = load i32* @prbs31.a, align 4, !dbg !30     ; [#uses=1 type=i32] [debug line = 5:51]
  %3 = ashr i32 %2, 30, !dbg !30                  ; [#uses=1 type=i32] [debug line = 5:51]
  %4 = load i32* @prbs31.a, align 4, !dbg !30     ; [#uses=1 type=i32] [debug line = 5:51]
  %5 = ashr i32 %4, 27, !dbg !30                  ; [#uses=1 type=i32] [debug line = 5:51]
  %6 = xor i32 %3, %5, !dbg !30                   ; [#uses=1 type=i32] [debug line = 5:51]
  %7 = and i32 %6, 1, !dbg !30                    ; [#uses=1 type=i32] [debug line = 5:51]
  store i32 %7, i32* %newbit, align 4, !dbg !30   ; [debug line = 5:51]
  %8 = load i32* @prbs31.a, align 4, !dbg !31     ; [#uses=1 type=i32] [debug line = 6:9]
  %9 = shl i32 %8, 1, !dbg !31                    ; [#uses=1 type=i32] [debug line = 6:9]
  %10 = load i32* %newbit, align 4, !dbg !31      ; [#uses=1 type=i32] [debug line = 6:9]
  %11 = or i32 %9, %10, !dbg !31                  ; [#uses=1 type=i32] [debug line = 6:9]
  %12 = and i32 %11, 2147483647, !dbg !31         ; [#uses=1 type=i32] [debug line = 6:9]
  store i32 %12, i32* @prbs31.a, align 4, !dbg !31 ; [debug line = 6:9]
  %13 = load i32* @prbs31.a, align 4, !dbg !32    ; [#uses=1 type=i32] [debug line = 7:9]
  %14 = load i32** %1, align 8, !dbg !32          ; [#uses=1 type=i32*] [debug line = 7:9]
  store i32 %13, i32* %14, align 4, !dbg !32      ; [debug line = 7:9]
  ret void, !dbg !33                              ; [debug line = 8:5]
}

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!18}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/lean/vivado/tp/prbs31/vivado/prbs31/run1/.autopilot/db/prbs31.pragma.2.c", metadata !"/home/lean/vivado/tp/prbs31/vivado", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !14} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"prbs31", metadata !"prbs31", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @prbs31, null, null, metadata !12, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"prbs31.c", metadata !"/home/lean/vivado/tp/prbs31/vivado", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"result_t", metadata !6, i32 5, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786484, i32 0, metadata !5, metadata !"a", metadata !"a", metadata !"", metadata !6, i32 4, metadata !17, i32 1, i32 1, i32* @prbs31.a} ; [ DW_TAG_variable ]
!17 = metadata !{i32 786454, null, metadata !"data_t", metadata !6, i32 4, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!18 = metadata !{void (i32*)* @prbs31, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24}
!19 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!20 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"result_t*"}
!22 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"hw_out"}
!24 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!25 = metadata !{i32 786689, metadata !5, metadata !"hw_out", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 3, i32 24, metadata !5, null}
!27 = metadata !{i32 786688, metadata !28, metadata !"newbit", metadata !6, i32 5, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!28 = metadata !{i32 786443, metadata !5, i32 3, i32 32, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 5, i32 13, metadata !28, null}
!30 = metadata !{i32 5, i32 51, metadata !28, null}
!31 = metadata !{i32 6, i32 9, metadata !28, null}
!32 = metadata !{i32 7, i32 9, metadata !28, null}
!33 = metadata !{i32 8, i32 5, metadata !28, null}
