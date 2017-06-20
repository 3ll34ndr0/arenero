
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set hw_out_group [add_wave_group hw_out(wire) -into $coutputgroup]
add_wave /apatb_prbs31_top/AESL_inst_prbs31/hw_out_ap_vld -into $hw_out_group -color #ffff00 -radix hex
add_wave /apatb_prbs31_top/AESL_inst_prbs31/hw_out -into $hw_out_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_prbs31_top/AESL_inst_prbs31/ap_start -into $blocksiggroup
add_wave /apatb_prbs31_top/AESL_inst_prbs31/ap_done -into $blocksiggroup
add_wave /apatb_prbs31_top/AESL_inst_prbs31/ap_idle -into $blocksiggroup
add_wave /apatb_prbs31_top/AESL_inst_prbs31/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_prbs31_top/AESL_inst_prbs31/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_prbs31_top/AESL_inst_prbs31/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_prbs31_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_prbs31_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_prbs31_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_prbs31_top/LENGTH_hw_out -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_hw_out_group [add_wave_group hw_out(wire) -into $tbcoutputgroup]
add_wave /apatb_prbs31_top/hw_out_ap_vld -into $tb_hw_out_group -color #ffff00 -radix hex
add_wave /apatb_prbs31_top/hw_out -into $tb_hw_out_group -radix hex
save_wave_config prbs31.wcfg
run all
quit

