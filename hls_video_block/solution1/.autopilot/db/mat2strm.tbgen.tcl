set moduleName mat2strm
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {mat2strm}
set C_modelType { void 0 }
set C_modelArgList {
	{ IN_size_read int 21 regular  }
	{ IN_data_V int 17 regular {fifo 0 volatile }  }
	{ OUT_V_data_V int 24 regular {axi_s 1 volatile  { OUTPUT_STREAM Data } }  }
	{ OUT_V_keep_V int 3 regular {axi_s 1 volatile  { OUTPUT_STREAM Keep } }  }
	{ OUT_V_strb_V int 3 regular {axi_s 1 volatile  { OUTPUT_STREAM Strb } }  }
	{ OUT_V_user_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM User } }  }
	{ OUT_V_last_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Last } }  }
	{ OUT_V_id_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM ID } }  }
	{ OUT_V_dest_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "IN_size_read", "interface" : "wire", "bitwidth" : 21, "direction" : "READONLY"} , 
 	{ "Name" : "IN_data_V", "interface" : "fifo", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ IN_size_read sc_in sc_lv 21 signal 0 } 
	{ IN_data_V_dout sc_in sc_lv 17 signal 1 } 
	{ IN_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ IN_data_V_read sc_out sc_logic 1 signal 1 } 
	{ OUTPUT_STREAM_TDATA sc_out sc_lv 24 signal 2 } 
	{ OUTPUT_STREAM_TVALID sc_out sc_logic 1 outvld 8 } 
	{ OUTPUT_STREAM_TREADY sc_in sc_logic 1 outacc 2 } 
	{ OUTPUT_STREAM_TKEEP sc_out sc_lv 3 signal 3 } 
	{ OUTPUT_STREAM_TSTRB sc_out sc_lv 3 signal 4 } 
	{ OUTPUT_STREAM_TUSER sc_out sc_lv 1 signal 5 } 
	{ OUTPUT_STREAM_TLAST sc_out sc_lv 1 signal 6 } 
	{ OUTPUT_STREAM_TID sc_out sc_lv 1 signal 7 } 
	{ OUTPUT_STREAM_TDEST sc_out sc_lv 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "IN_size_read", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "IN_size_read", "role": "default" }} , 
 	{ "name": "IN_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "IN_data_V", "role": "dout" }} , 
 	{ "name": "IN_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_data_V", "role": "empty_n" }} , 
 	{ "name": "IN_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_data_V", "role": "read" }} , 
 	{ "name": "OUTPUT_STREAM_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "OUT_V_data_V", "role": "_TDATA" }} , 
 	{ "name": "OUTPUT_STREAM_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "OUT_V_dest_V", "role": "_TVALID" }} , 
 	{ "name": "OUTPUT_STREAM_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "OUT_V_data_V", "role": "_TREADY" }} , 
 	{ "name": "OUTPUT_STREAM_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_V_keep_V", "role": "_TKEEP" }} , 
 	{ "name": "OUTPUT_STREAM_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_V_strb_V", "role": "_TSTRB" }} , 
 	{ "name": "OUTPUT_STREAM_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_V_user_V", "role": "_TUSER" }} , 
 	{ "name": "OUTPUT_STREAM_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_V_last_V", "role": "_TLAST" }} , 
 	{ "name": "OUTPUT_STREAM_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_V_id_V", "role": "AM_TID" }} , 
 	{ "name": "OUTPUT_STREAM_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_V_dest_V", "role": "_TDEST" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
		"Port" : [
			{"Name" : "IN_size_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "IN_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
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
			{"Name" : "OUT_V_dest_V", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "1843201", "Max" : "1843201"}
	, {"Name" : "Interval", "Min" : "1843201", "Max" : "1843201"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	IN_size_read { ap_none {  { IN_size_read in_data 0 21 } } }
	IN_data_V { ap_fifo {  { IN_data_V_dout fifo_data 0 17 }  { IN_data_V_empty_n fifo_status 0 1 }  { IN_data_V_read fifo_update 1 1 } } }
	OUT_V_data_V { axis {  { OUTPUT_STREAM_TDATA out_data 1 24 }  { OUTPUT_STREAM_TREADY out_acc 0 1 } } }
	OUT_V_keep_V { axis {  { OUTPUT_STREAM_TKEEP out_data 1 3 } } }
	OUT_V_strb_V { axis {  { OUTPUT_STREAM_TSTRB out_data 1 3 } } }
	OUT_V_user_V { axis {  { OUTPUT_STREAM_TUSER out_data 1 1 } } }
	OUT_V_last_V { axis {  { OUTPUT_STREAM_TLAST out_data 1 1 } } }
	OUT_V_id_V { axis {  { OUTPUT_STREAM_TID out_data 1 1 } } }
	OUT_V_dest_V { axis {  { OUTPUT_STREAM_TVALID out_vld 1 1 }  { OUTPUT_STREAM_TDEST out_data 1 1 } } }
}
