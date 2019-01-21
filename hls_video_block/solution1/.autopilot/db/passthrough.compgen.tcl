# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name input_mat_data_strea \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_mat_data_strea \
    op interface \
    ports { input_mat_data_strea_dout { I 8 vector } input_mat_data_strea_empty_n { I 1 bit } input_mat_data_strea_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name input_mat_data_strea_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_mat_data_strea_3 \
    op interface \
    ports { input_mat_data_strea_3_dout { I 8 vector } input_mat_data_strea_3_empty_n { I 1 bit } input_mat_data_strea_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name input_mat_data_strea_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_mat_data_strea_4 \
    op interface \
    ports { input_mat_data_strea_4_dout { I 8 vector } input_mat_data_strea_4_empty_n { I 1 bit } input_mat_data_strea_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name output_mat_data_stre \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_mat_data_stre \
    op interface \
    ports { output_mat_data_stre_din { O 8 vector } output_mat_data_stre_full_n { I 1 bit } output_mat_data_stre_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name output_mat_data_stre_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_mat_data_stre_3 \
    op interface \
    ports { output_mat_data_stre_3_din { O 8 vector } output_mat_data_stre_3_full_n { I 1 bit } output_mat_data_stre_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name output_mat_data_stre_4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_mat_data_stre_4 \
    op interface \
    ports { output_mat_data_stre_4_din { O 8 vector } output_mat_data_stre_4_full_n { I 1 bit } output_mat_data_stre_4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


