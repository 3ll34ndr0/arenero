; ModuleID = '/home/lean/vivado/tp/prbs31/vivado/prbs31/run1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prbs31_str = internal unnamed_addr constant [7 x i8] c"prbs31\00" ; [#uses=1 type=[7 x i8]*]
@a = internal unnamed_addr global i32 2, align 4  ; [#uses=2 type=i32*]

; [#uses=0]
define void @prbs31(i32* %hw_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %hw_out) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @prbs31_str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %hw_out}, i64 0, metadata !13), !dbg !23 ; [debug line = 3:24] [debug variable = hw_out]
  %a_load = load i32* @a, align 4, !dbg !24       ; [#uses=3 type=i32] [debug line = 5:51]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_load, i32 30), !dbg !24 ; [#uses=1 type=i1] [debug line = 5:51]
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_load, i32 27), !dbg !24 ; [#uses=1 type=i1] [debug line = 5:51]
  %newbit = xor i1 %tmp, %tmp_1, !dbg !24         ; [#uses=1 type=i1] [debug line = 5:51]
  call void @llvm.dbg.value(metadata !{i1 %newbit}, i64 0, metadata !26), !dbg !24 ; [debug line = 5:51] [debug variable = newbit]
  %tmp_2 = trunc i32 %a_load to i30               ; [#uses=1 type=i30]
  %tmp_5 = call i31 @_ssdm_op_BitConcatenate.i31.i30.i1(i30 %tmp_2, i1 %newbit), !dbg !27 ; [#uses=1 type=i31] [debug line = 6:9]
  %tmp_5_cast = zext i31 %tmp_5 to i32, !dbg !27  ; [#uses=2 type=i32] [debug line = 6:9]
  store i32 %tmp_5_cast, i32* @a, align 4, !dbg !27 ; [debug line = 6:9]
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %hw_out, i32 %tmp_5_cast) nounwind, !dbg !28 ; [debug line = 7:9]
  ret void, !dbg !29                              ; [debug line = 8:5]
}

; [#uses=2]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_2 = and i32 %0, %empty                   ; [#uses=1 type=i32]
  %empty_3 = icmp ne i32 %empty_2, 0              ; [#uses=1 type=i1]
  ret i1 %empty_3
}

; [#uses=1]
define weak i31 @_ssdm_op_BitConcatenate.i31.i30.i1(i30, i1) nounwind readnone {
entry:
  %empty = zext i30 %0 to i31                     ; [#uses=1 type=i31]
  %empty_4 = zext i1 %1 to i31                    ; [#uses=1 type=i31]
  %empty_5 = shl i31 %empty, 1                    ; [#uses=1 type=i31]
  %empty_6 = or i31 %empty_5, %empty_4            ; [#uses=1 type=i31]
  ret i31 %empty_6
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{void (i32*)* @prbs31, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"result_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"hw_out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"hw_out", metadata !11, metadata !"int", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 1}
!13 = metadata !{i32 786689, metadata !14, metadata !"hw_out", metadata !15, i32 16777219, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 786478, i32 0, metadata !15, metadata !"prbs31", metadata !"prbs31", metadata !"", metadata !15, i32 3, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @prbs31, null, null, metadata !21, i32 3} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786473, metadata !"prbs31.c", metadata !"/home/lean/vivado/tp/prbs31/vivado", null} ; [ DW_TAG_file_type ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !18}
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786454, null, metadata !"result_t", metadata !15, i32 5, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!20 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!23 = metadata !{i32 3, i32 24, metadata !14, null}
!24 = metadata !{i32 5, i32 51, metadata !25, null}
!25 = metadata !{i32 786443, metadata !14, i32 3, i32 32, metadata !15, i32 0} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 786688, metadata !25, metadata !"newbit", metadata !15, i32 5, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!27 = metadata !{i32 6, i32 9, metadata !25, null}
!28 = metadata !{i32 7, i32 9, metadata !25, null}
!29 = metadata !{i32 8, i32 5, metadata !25, null}
