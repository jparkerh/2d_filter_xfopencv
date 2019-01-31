############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_video_block
set_top hls_video_block
add_files hls_video_block/hls_video_block.cpp -cflags "-D__XFCV_HLS_MODE__ -I./include -I./include/src --std=c++0x"
add_files -tb hls_video_block/test_hls_video_block.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb hls_video_block/IMG_0562.bmp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 3 -name default
set_clock_uncertainty 0.3
source "./hls_video_block/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -library "hls_vid" -version "1.78"
