// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="prbs31,hls_ip_2016_4,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.370000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=32,HLS_SYN_LUT=1}" *)

module prbs31 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        hw_out,
        hw_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1E = 32'b11110;
parameter    ap_const_lv32_1B = 32'b11011;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] hw_out;
output   hw_out_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg hw_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
reg   [31:0] a;
wire   [31:0] tmp_5_cast_fu_65_p1;
wire   [0:0] tmp_fu_31_p3;
wire   [0:0] tmp_1_fu_39_p3;
wire   [29:0] tmp_2_fu_53_p1;
wire   [0:0] newbit_fu_47_p2;
wire   [30:0] tmp_5_fu_57_p3;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'b1;
#0 a = 32'b10;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        a[30 : 0] <= tmp_5_cast_fu_65_p1[30 : 0];
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        hw_out_ap_vld = 1'b1;
    end else begin
        hw_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign hw_out = tmp_5_fu_57_p3;

assign newbit_fu_47_p2 = (tmp_fu_31_p3 ^ tmp_1_fu_39_p3);

assign tmp_1_fu_39_p3 = a[ap_const_lv32_1B];

assign tmp_2_fu_53_p1 = a[29:0];

assign tmp_5_cast_fu_65_p1 = tmp_5_fu_57_p3;

assign tmp_5_fu_57_p3 = {{tmp_2_fu_53_p1}, {newbit_fu_47_p2}};

assign tmp_fu_31_p3 = a[ap_const_lv32_1E];

always @ (posedge ap_clk) begin
    a[31] <= 1'b0;
end

endmodule //prbs31
