############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set include_directory "C:/xfOpenCV/include"
set cflags ""
puts [append $cflags "-D__XFCV_HLS_MODE__ -I" $include_directory]
open_project -reset  hls_video_block
set_top hls_video_block
add_files hls_video_block.cpp -cflags $cflags
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-i} -tool vivado
create_clock -period 10 -name default
#source "./solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
#export_design -rtl verilog -format ip_catalog -vendor "parker-xilinx"

#exit
