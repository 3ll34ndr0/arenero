############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project prbs31
set_top prbs31
add_files prbs31.c
add_files -tb prbs31_test.c -cflags "-DHW_COSIM"
open_solution "run2"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
set_clock_uncertainty 1.1
#source "directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
