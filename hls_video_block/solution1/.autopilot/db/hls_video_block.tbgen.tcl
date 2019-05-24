set moduleName hls_video_block
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {hls_video_block}
set C_modelType { void 0 }
set C_modelArgList {
	{ VIDEO_IN_V_data_V int 24 regular {axi_s 0 volatile  { INPUT_STREAM Data } }  }
	{ VIDEO_IN_V_keep_V int 3 regular {axi_s 0 volatile  { INPUT_STREAM Keep } }  }
	{ VIDEO_IN_V_strb_V int 3 regular {axi_s 0 volatile  { INPUT_STREAM Strb } }  }
	{ VIDEO_IN_V_user_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM User } }  }
	{ VIDEO_IN_V_last_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM Last } }  }
	{ VIDEO_IN_V_id_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM ID } }  }
	{ VIDEO_IN_V_dest_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM Dest } }  }
	{ VIDEO_OUT_V_data_V int 24 regular {axi_s 1 volatile  { OUTPUT_STREAM Data } }  }
	{ VIDEO_OUT_V_keep_V int 3 regular {axi_s 1 volatile  { OUTPUT_STREAM Keep } }  }
	{ VIDEO_OUT_V_strb_V int 3 regular {axi_s 1 volatile  { OUTPUT_STREAM Strb } }  }
	{ VIDEO_OUT_V_user_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM User } }  }
	{ VIDEO_OUT_V_last_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Last } }  }
	{ VIDEO_OUT_V_id_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM ID } }  }
	{ VIDEO_OUT_V_dest_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "VIDEO_IN_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "INPUT_STREAM.V.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_IN_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "INPUT_STREAM.V.keep.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_IN_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "INPUT_STREAM.V.strb.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_IN_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_IN_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_IN_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_IN_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "OUTPUT_STREAM.V.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "OUTPUT_STREAM.V.keep.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "OUTPUT_STREAM.V.strb.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ INPUT_STREAM_TDATA sc_in sc_lv 24 signal 0 } 
	{ INPUT_STREAM_TKEEP sc_in sc_lv 3 signal 1 } 
	{ INPUT_STREAM_TSTRB sc_in sc_lv 3 signal 2 } 
	{ INPUT_STREAM_TUSER sc_in sc_lv 1 signal 3 } 
	{ INPUT_STREAM_TLAST sc_in sc_lv 1 signal 4 } 
	{ INPUT_STREAM_TID sc_in sc_lv 1 signal 5 } 
	{ INPUT_STREAM_TDEST sc_in sc_lv 1 signal 6 } 
	{ OUTPUT_STREAM_TDATA sc_out sc_lv 24 signal 7 } 
	{ OUTPUT_STREAM_TKEEP sc_out sc_lv 3 signal 8 } 
	{ OUTPUT_STREAM_TSTRB sc_out sc_lv 3 signal 9 } 
	{ OUTPUT_STREAM_TUSER sc_out sc_lv 1 signal 10 } 
	{ OUTPUT_STREAM_TLAST sc_out sc_lv 1 signal 11 } 
	{ OUTPUT_STREAM_TID sc_out sc_lv 1 signal 12 } 
	{ OUTPUT_STREAM_TDEST sc_out sc_lv 1 signal 13 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ INPUT_STREAM_TVALID sc_in sc_logic 1 invld 6 } 
	{ INPUT_STREAM_TREADY sc_out sc_logic 1 inacc 6 } 
	{ OUTPUT_STREAM_TVALID sc_out sc_logic 1 outvld 13 } 
	{ OUTPUT_STREAM_TREADY sc_in sc_logic 1 outacc 13 } 
}
set NewPortList {[ 
	{ "name": "INPUT_STREAM_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "VIDEO_IN_V_data_V", "role": "" }} , 
 	{ "name": "INPUT_STREAM_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "VIDEO_IN_V_keep_V", "role": "" }} , 
 	{ "name": "INPUT_STREAM_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "VIDEO_IN_V_strb_V", "role": "" }} , 
 	{ "name": "INPUT_STREAM_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_IN_V_user_V", "role": "" }} , 
 	{ "name": "INPUT_STREAM_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_IN_V_last_V", "role": "" }} , 
 	{ "name": "INPUT_STREAM_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_IN_V_id_V", "role": "" }} , 
 	{ "name": "INPUT_STREAM_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_IN_V_dest_V", "role": "" }} , 
 	{ "name": "OUTPUT_STREAM_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_data_V", "role": "" }} , 
 	{ "name": "OUTPUT_STREAM_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_keep_V", "role": "" }} , 
 	{ "name": "OUTPUT_STREAM_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_strb_V", "role": "" }} , 
 	{ "name": "OUTPUT_STREAM_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_user_V", "role": "" }} , 
 	{ "name": "OUTPUT_STREAM_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_last_V", "role": "" }} , 
 	{ "name": "OUTPUT_STREAM_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_id_V", "role": "" }} , 
 	{ "name": "OUTPUT_STREAM_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_dest_V", "role": "" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "VIDEO_IN_V_dest_V", "role": "D" }} , 
 	{ "name": "INPUT_STREAM_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "VIDEO_IN_V_dest_V", "role": "Y" }} , 
 	{ "name": "OUTPUT_STREAM_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "VIDEO_OUT_V_dest_V", "role": "D" }} , 
 	{ "name": "OUTPUT_STREAM_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "VIDEO_OUT_V_dest_V", "role": "Y" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "hls_video_block",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2772814", "EstimateLatencyMax" : "2772814",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "strm2mat_U0"}],
		"OutputProcess" : [
			{"ID" : "10", "Name" : "mat2strm_U0"}],
		"Port" : [
			{"Name" : "VIDEO_IN_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "strm2mat_U0", "Port" : "IN_V_data_V"}]},
			{"Name" : "VIDEO_IN_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "strm2mat_U0", "Port" : "IN_V_keep_V"}]},
			{"Name" : "VIDEO_IN_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "strm2mat_U0", "Port" : "IN_V_strb_V"}]},
			{"Name" : "VIDEO_IN_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "strm2mat_U0", "Port" : "IN_V_user_V"}]},
			{"Name" : "VIDEO_IN_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "strm2mat_U0", "Port" : "IN_V_last_V"}]},
			{"Name" : "VIDEO_IN_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "strm2mat_U0", "Port" : "IN_V_id_V"}]},
			{"Name" : "VIDEO_IN_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "strm2mat_U0", "Port" : "IN_V_dest_V"}]},
			{"Name" : "VIDEO_OUT_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "mat2strm_U0", "Port" : "OUT_V_data_V"}]},
			{"Name" : "VIDEO_OUT_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "mat2strm_U0", "Port" : "OUT_V_keep_V"}]},
			{"Name" : "VIDEO_OUT_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "mat2strm_U0", "Port" : "OUT_V_strb_V"}]},
			{"Name" : "VIDEO_OUT_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "mat2strm_U0", "Port" : "OUT_V_user_V"}]},
			{"Name" : "VIDEO_OUT_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "mat2strm_U0", "Port" : "OUT_V_last_V"}]},
			{"Name" : "VIDEO_OUT_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "mat2strm_U0", "Port" : "OUT_V_id_V"}]},
			{"Name" : "VIDEO_OUT_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "mat2strm_U0", "Port" : "OUT_V_dest_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.strm2mat_U0", "Parent" : "0",
		"CDFG" : "strm2mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "921601", "EstimateLatencyMax" : "921601",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "IN_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "INPUT_STREAM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IN_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IN_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IN_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IN_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IN_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IN_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "OUT_size_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "OUT_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "OUT_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rgb2gry_U0", "Parent" : "0",
		"CDFG" : "rgb2gry",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "921602", "EstimateLatencyMax" : "921602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_rgb2gryg8j_U",
		"Port" : [
			{"Name" : "input_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "input_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "output_mat_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_2DFilter_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
		"CDFG" : "hls_2DFilter",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1853773", "EstimateLatencyMax" : "1853773",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_hls_2DFhbi_U",
		"Port" : [
			{"Name" : "input_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "input_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "output_mat_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hls_2DFilter_U0.line_buffer_0_0_va_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hls_2DFilter_U0.line_buffer_1_0_va_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hls_2DFilter_U0.line_buffer_2_0_va_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hls_2DFilter_U0.line_buffer_3_0_va_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hls_2DFilter_U0.line_buffer_4_0_va_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gry2rgb_U0", "Parent" : "0",
		"CDFG" : "gry2rgb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "921602", "EstimateLatencyMax" : "921602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_gry2rgbibs_U",
		"Port" : [
			{"Name" : "input_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "input_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "output_mat_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat2strm_U0", "Parent" : "0",
		"CDFG" : "mat2strm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1843201", "EstimateLatencyMax" : "1843201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "9",
		"StartFifo" : "start_for_mat2strjbC_U",
		"Port" : [
			{"Name" : "IN_size_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "IN_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "IN_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OUT_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "OUTPUT_STREAM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OUT_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUT_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUT_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUT_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUT_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUT_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_tmp_data_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.im_1_data_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.im_2_data_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_tmp_data_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_rgb2gryg8j_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_hls_2DFhbi_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_gry2rgbibs_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_mat2strjbC_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hls_video_block {
		VIDEO_IN_V_data_V {Type I LastRead 1 FirstWrite -1}
		VIDEO_IN_V_keep_V {Type I LastRead 1 FirstWrite -1}
		VIDEO_IN_V_strb_V {Type I LastRead 1 FirstWrite -1}
		VIDEO_IN_V_user_V {Type I LastRead 1 FirstWrite -1}
		VIDEO_IN_V_last_V {Type I LastRead 1 FirstWrite -1}
		VIDEO_IN_V_id_V {Type I LastRead 1 FirstWrite -1}
		VIDEO_IN_V_dest_V {Type I LastRead 1 FirstWrite -1}
		VIDEO_OUT_V_data_V {Type O LastRead -1 FirstWrite 1}
		VIDEO_OUT_V_keep_V {Type O LastRead -1 FirstWrite 1}
		VIDEO_OUT_V_strb_V {Type O LastRead -1 FirstWrite 1}
		VIDEO_OUT_V_user_V {Type O LastRead -1 FirstWrite 1}
		VIDEO_OUT_V_last_V {Type O LastRead -1 FirstWrite 1}
		VIDEO_OUT_V_id_V {Type O LastRead -1 FirstWrite 1}
		VIDEO_OUT_V_dest_V {Type O LastRead -1 FirstWrite 1}}
	strm2mat {
		IN_V_data_V {Type I LastRead 1 FirstWrite -1}
		IN_V_keep_V {Type I LastRead 1 FirstWrite -1}
		IN_V_strb_V {Type I LastRead 1 FirstWrite -1}
		IN_V_user_V {Type I LastRead 1 FirstWrite -1}
		IN_V_last_V {Type I LastRead 1 FirstWrite -1}
		IN_V_id_V {Type I LastRead 1 FirstWrite -1}
		IN_V_dest_V {Type I LastRead 1 FirstWrite -1}
		OUT_size_read {Type I LastRead 0 FirstWrite -1}
		OUT_data_V {Type O LastRead -1 FirstWrite 1}}
	rgb2gry {
		input_mat_data_V {Type I LastRead 2 FirstWrite -1}
		output_mat_data_V {Type O LastRead -1 FirstWrite 2}}
	hls_2DFilter {
		input_mat_data_V {Type I LastRead 3 FirstWrite -1}
		output_mat_data_V {Type O LastRead -1 FirstWrite 3}}
	gry2rgb {
		input_mat_data_V {Type I LastRead 2 FirstWrite -1}
		output_mat_data_V {Type O LastRead -1 FirstWrite 2}}
	mat2strm {
		IN_size_read {Type I LastRead 0 FirstWrite -1}
		IN_data_V {Type I LastRead 1 FirstWrite -1}
		OUT_V_data_V {Type O LastRead -1 FirstWrite 1}
		OUT_V_keep_V {Type O LastRead -1 FirstWrite 1}
		OUT_V_strb_V {Type O LastRead -1 FirstWrite 1}
		OUT_V_user_V {Type O LastRead -1 FirstWrite 1}
		OUT_V_last_V {Type O LastRead -1 FirstWrite 1}
		OUT_V_id_V {Type O LastRead -1 FirstWrite 1}
		OUT_V_dest_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2772814", "Max" : "2772814"}
	, {"Name" : "Interval", "Min" : "1853774", "Max" : "1853774"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	VIDEO_IN_V_data_V { axis {  { INPUT_STREAM_TDATA in_data 0 24 } } }
	VIDEO_IN_V_keep_V { axis {  { INPUT_STREAM_TKEEP in_data 0 3 } } }
	VIDEO_IN_V_strb_V { axis {  { INPUT_STREAM_TSTRB in_data 0 3 } } }
	VIDEO_IN_V_user_V { axis {  { INPUT_STREAM_TUSER in_data 0 1 } } }
	VIDEO_IN_V_last_V { axis {  { INPUT_STREAM_TLAST in_data 0 1 } } }
	VIDEO_IN_V_id_V { axis {  { INPUT_STREAM_TID in_data 0 1 } } }
	VIDEO_IN_V_dest_V { axis {  { INPUT_STREAM_TDEST in_data 0 1 }  { INPUT_STREAM_TVALID in_vld 0 1 }  { INPUT_STREAM_TREADY in_acc 1 1 } } }
	VIDEO_OUT_V_data_V { axis {  { OUTPUT_STREAM_TDATA out_data 1 24 } } }
	VIDEO_OUT_V_keep_V { axis {  { OUTPUT_STREAM_TKEEP out_data 1 3 } } }
	VIDEO_OUT_V_strb_V { axis {  { OUTPUT_STREAM_TSTRB out_data 1 3 } } }
	VIDEO_OUT_V_user_V { axis {  { OUTPUT_STREAM_TUSER out_data 1 1 } } }
	VIDEO_OUT_V_last_V { axis {  { OUTPUT_STREAM_TLAST out_data 1 1 } } }
	VIDEO_OUT_V_id_V { axis {  { OUTPUT_STREAM_TID out_data 1 1 } } }
	VIDEO_OUT_V_dest_V { axis {  { OUTPUT_STREAM_TDEST out_data 1 1 }  { OUTPUT_STREAM_TVALID out_vld 1 1 }  { OUTPUT_STREAM_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
