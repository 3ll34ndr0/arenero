
/home/lean/vivado/Vivado/2016.4/bin/xelab xil_defaultlib.apatb_prbs31_top -prj prbs31.prj --initfile "/home/lean/vivado/Vivado/2016.4/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s prbs31 -debug wave
/home/lean/vivado/Vivado/2016.4/bin/xsim --noieeewarnings prbs31 -tclbatch prbs31.tcl

