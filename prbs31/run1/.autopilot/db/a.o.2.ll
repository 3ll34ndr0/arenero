; ModuleID = '/home/lean/vivado/tp/prbs31/vivado/prbs31/run1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prbs31.str = internal unnamed_addr constant [7 x i8] c"prbs31\00" ; [#uses=1 type=[7 x i8]*]
@a = internal unnamed_addr global i32 2, align 4  ; [#uses=2 type=i32*]

; [#uses=0]
define void @prbs31(i32* %hw_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %hw_out) nounwind, !map !21
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @prbs31.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %hw_out}, i64 0, metadata !27), !dbg !28 ; [debug line = 3:24] [debug variable = hw_out]
  %a.load = load i32* @a, align 4, !dbg !29       ; [#uses=3 type=i32] [debug line = 5:51]
  %a.load.cast1 = trunc i32 %a.load to i28, !dbg !29 ; [#uses=1 type=i28] [debug line = 5:51]
  %a.load.cast = trunc i32 %a.load to i31, !dbg !29 ; [#uses=1 type=i31] [debug line = 5:51]
  %tmp = lshr i31 %a.load.cast, 30, !dbg !29      ; [#uses=1 type=i31] [debug line = 5:51]
  %tmp.cast = trunc i31 %tmp to i1, !dbg !29      ; [#uses=1 type=i1] [debug line = 5:51]
  %tmp.1 = lshr i28 %a.load.cast1, 27, !dbg !29   ; [#uses=1 type=i28] [debug line = 5:51]
  %tmp.1.cast = trunc i28 %tmp.1 to i1, !dbg !29  ; [#uses=1 type=i1] [debug line = 5:51]
  %newbit = xor i1 %tmp.cast, %tmp.1.cast, !dbg !29 ; [#uses=1 type=i1] [debug line = 5:51]
  call void @llvm.dbg.value(metadata !{i1 %newbit}, i64 0, metadata !31), !dbg !29 ; [debug line = 5:51] [debug variable = newbit]
  %tmp.2 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %a.load, i32 0, i32 29) ; [#uses=1 type=i30]
  %tmp.5 = call i31 @_ssdm_op_BitConcatenate.i31.i30.i1(i30 %tmp.2, i1 %newbit), !dbg !32 ; [#uses=1 type=i31] [debug line = 6:9]
  %tmp.5.cast = zext i31 %tmp.5 to i32, !dbg !32  ; [#uses=2 type=i32] [debug line = 6:9]
  store i32 %tmp.5.cast, i32* @a, align 4, !dbg !32 ; [debug line = 6:9]
  store i32 %tmp.5.cast, i32* %hw_out, align 4, !dbg !33 ; [debug line = 7:9]
  ret void, !dbg !34                              ; [debug line = 8:5]
}

; [#uses=2]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i30 @_ssdm_op_PartSelect.i30.i31.i32.i32(i31, i32, i32) nounwind readnone

; [#uses=1]
declare i31 @_ssdm_op_BitConcatenate.i31.i30.i1(i30, i1) nounwind readnone

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!7}

!0 = metadata !{void (i32*)* @prbs31, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"result_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"hw_out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/lean/vivado/tp/prbs31/vivado/prbs31/run1/.autopilot/db/prbs31.pragma.2.c", metadata !"/home/lean/vivado/tp/prbs31/vivado", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !8} ; [ DW_TAG_compile_unit ]
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786484, i32 0, metadata !11, metadata !"a", metadata !"a", metadata !"", metadata !12, i32 4, metadata !20, i32 1, i32 1, i32* @a} ; [ DW_TAG_variable ]
!11 = metadata !{i32 786478, i32 0, metadata !12, metadata !"prbs31", metadata !"prbs31", metadata !"", metadata !12, i32 3, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @prbs31, null, null, metadata !18, i32 3} ; [ DW_TAG_subprogram ]
!12 = metadata !{i32 786473, metadata !"prbs31.c", metadata !"/home/lean/vivado/tp/prbs31/vivado", null} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786454, null, metadata !"result_t", metadata !12, i32 5, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!20 = metadata !{i32 786454, null, metadata !"data_t", metadata !12, i32 4, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 31, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"hw_out", metadata !25, metadata !"int", i32 0, i32 31}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 0, i32 1}
!27 = metadata !{i32 786689, metadata !11, metadata !"hw_out", metadata !12, i32 16777219, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 3, i32 24, metadata !11, null}
!29 = metadata !{i32 5, i32 51, metadata !30, null}
!30 = metadata !{i32 786443, metadata !11, i32 3, i32 32, metadata !12, i32 0} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 786688, metadata !30, metadata !"newbit", metadata !12, i32 5, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!32 = metadata !{i32 6, i32 9, metadata !30, null}
!33 = metadata !{i32 7, i32 9, metadata !30, null}
!34 = metadata !{i32 8, i32 5, metadata !30, null}
