; ModuleID = '/home/lean/vivado/tp/prbs31/vivado/prbs31/run1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prbs31_str = internal unnamed_addr constant [7 x i8] c"prbs31\00"
@a = internal unnamed_addr global i32 2, align 4

define void @prbs31(i32* %hw_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %hw_out) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @prbs31_str) nounwind
  %a_load = load i32* @a, align 4
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_load, i32 30)
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_load, i32 27)
  %newbit = xor i1 %tmp, %tmp_1
  %tmp_2 = trunc i32 %a_load to i30
  %tmp_5 = call i31 @_ssdm_op_BitConcatenate.i31.i30.i1(i30 %tmp_2, i1 %newbit)
  %tmp_5_cast = zext i31 %tmp_5 to i32
  store i32 %tmp_5_cast, i32* @a, align 4
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %hw_out, i32 %tmp_5_cast) nounwind
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_auto.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_2 = and i32 %0, %empty
  %empty_3 = icmp ne i32 %empty_2, 0
  ret i1 %empty_3
}

define weak i31 @_ssdm_op_BitConcatenate.i31.i30.i1(i30, i1) nounwind readnone {
entry:
  %empty = zext i30 %0 to i31
  %empty_4 = zext i1 %1 to i31
  %empty_5 = shl i31 %empty, 1
  %empty_6 = or i31 %empty_5, %empty_4
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
