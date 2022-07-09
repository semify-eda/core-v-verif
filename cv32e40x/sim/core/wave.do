onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group insrtcn /tb_top/core_clk
add wave -noupdate -group insrtcn /tb_top/cv32e40x_tb_wrapper_i/instr_rdata
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/clk
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/rst_n
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/boot_addr_i
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/branch_target_ex_i
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/dm_exception_addr_i
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/dm_halt_addr_i
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/dpc_i
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/jump_target_id_i
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mepc_i
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mtvec_addr_i
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mtvt_addr_i
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/ctrl_fsm_i
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/trigger_match_i
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/if_id_pipe_o
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/pc_if_o
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/csr_mtvec_init_o
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/if_busy_o
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/ptr_in_if_o
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/if_valid_o
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/id_ready_i
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/xif_offloading_id_i
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/if_ready
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_busy
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/branch_addr_n
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_valid
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_instr
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_is_ptr
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/illegal_c_insn
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instr_decompressed
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instr_compressed_int
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_resp_valid
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_trans_valid
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_trans_ready
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_trans_addr
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_trans_data_access
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_inst_resp
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_one_txn_pend_n
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/bus_resp_valid
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/bus_resp
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/bus_trans_valid
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/bus_trans_ready
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/bus_trans
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/core_trans
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instr_valid
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/xif_id
add wave -noupdate -group if_interface /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instr_meta_n
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/clk_i
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/rst_ni
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/fetch_enable_i
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/tests_passed_o
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/tests_failed_o
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/exit_value_o
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/exit_valid_o
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/instr_req
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/instr_gnt
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/instr_rvalid
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/instr_addr
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/instr_rdata
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/data_req
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/data_gnt
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/data_rvalid
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/data_addr
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/data_we
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/data_be
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/data_rdata
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/data_wdata
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/debug_req
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/irq
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/irq_id_in
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/irq_ack
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/irq_id_out
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/irq_sec
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/samples_csr_i
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/signals_csr_i
add wave -noupdate -group wrapper /tb_top/cv32e40x_tb_wrapper_i/core_sleep_o
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/clk_i
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/rst_ni
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/dm_halt_addr_i
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/instr_req_i
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/instr_addr_i
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/instr_rdata_o
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/instr_rvalid_o
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/instr_gnt_o
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_req_i
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_addr_i
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_we_i
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_be_i
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_wdata_i
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_rdata_o
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_rvalid_o
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_gnt_o
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/irq_id_i
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/irq_ack_i
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/irq_o
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/pc_core_id_i
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/debug_req_o
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/tests_passed_o
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/tests_failed_o
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/exit_valid_o
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/exit_value_o
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/select_rdata_d
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/select_rdata_q
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/transaction
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/i
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_addr_aligned
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_rvalid_q
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/instr_rvalid_q
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/core_instr_rdata
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/core_data_rdata
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/ram_data_req
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/ram_data_addr
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/ram_data_wdata
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/ram_data_rdata
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/ram_data_we
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/ram_data_be
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/ram_data_gnt
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/ram_data_valid
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_req_dec
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_wdata_dec
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_addr_dec
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_we_dec
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_be_dec
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/ram_instr_rdata
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/ram_instr_req
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/ram_instr_addr
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/ram_instr_gnt
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/ram_instr_valid
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/instr_addr_remap
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/print_wdata
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/print_valid
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/sig_end_d
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/sig_end_q
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/sig_begin_d
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/sig_begin_q
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/timer_irq_mask_q
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/timer_cnt_q
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/irq_q
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/timer_reg_valid
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/timer_val_valid
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/timer_wdata
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/cycle_count_q
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/cycle_count_overflow_q
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/cycle_count_clear
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/cycle_count_print
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/debugger_wdata
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/debugger_valid
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/rnd_stall_req
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/rnd_stall_addr
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/rnd_stall_wdata
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/rnd_stall_we
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/rnd_stall_rdata
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/rnd_stall_instr_req
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/rnd_stall_instr_gnt
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/rnd_stall_data_req
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/rnd_stall_data_gnt
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/rnd_num_req
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/rnd_num
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/rnd_irq
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/use_sig_file
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/sig_fd
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/errno
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/data_rdata_mux
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/debugger_start_cnt_q
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/debug_req_value_q
add wave -noupdate -group ram /tb_top/cv32e40x_tb_wrapper_i/ram_i/debug_req_duration_q
add wave -noupdate -group {pc target} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/cv32e40x_pc_target_i/bch_jmp_mux_sel_i
add wave -noupdate -group {pc target} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/cv32e40x_pc_target_i/pc_id_i
add wave -noupdate -group {pc target} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/cv32e40x_pc_target_i/imm_uj_type_i
add wave -noupdate -group {pc target} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/cv32e40x_pc_target_i/imm_sb_type_i
add wave -noupdate -group {pc target} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/cv32e40x_pc_target_i/imm_i_type_i
add wave -noupdate -group {pc target} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/cv32e40x_pc_target_i/jalr_fw_i
add wave -noupdate -group {pc target} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/cv32e40x_pc_target_i/bch_target_o
add wave -noupdate -group {pc target} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/cv32e40x_pc_target_i/jmp_target_o
add wave -noupdate -group {pc target} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/cv32e40x_pc_target_i/pc_target
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/clk_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/rst_ni
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/scan_cg_en_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/boot_addr_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/dm_exception_addr_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/dm_halt_addr_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mhartid_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mimpid_patch_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mtvec_addr_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/instr_req_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/instr_gnt_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/instr_rvalid_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/instr_addr_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/instr_memtype_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/instr_prot_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/instr_dbg_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/instr_rdata_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/instr_err_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_req_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_gnt_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_rvalid_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_addr_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_be_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_we_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_wdata_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_memtype_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_prot_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_dbg_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_atop_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_rdata_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_err_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_exokay_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mcycle_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/irq_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/clic_irq_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/clic_irq_id_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/clic_irq_level_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/clic_irq_priv_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/clic_irq_shv_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/fencei_flush_req_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/fencei_flush_ack_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/debug_req_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/debug_havereset_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/debug_running_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/debug_halted_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/fetch_enable_i
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/core_sleep_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/signals_csr_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/samples_csr_o
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/pc_if
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ptr_in_if
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/jump_target_id
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/branch_target_ex
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/branch_decision_ex
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_busy
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_busy
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_interruptible
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_write_buffer_empty
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_ex_pipe
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_wb_pipe
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_id_pipe
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ctrl_byp
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ctrl_fsm
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/rf_we_wb
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/rf_waddr_wb
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/rf_wdata_wb
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/rf_wdata_ex
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/rf_re_id
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mtvec_addr
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mtvec_mode
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mtvt_addr
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mintthresh
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mintstatus
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mcause
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/csr_rdata
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/csr_counter_read
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/csr_mnxti_read
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/csr_clic_pa_valid
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/csr_clic_pa
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_split_ex
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_mpu_status_wb
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_rdata_wb
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_err_wb
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_valid_0
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_ready_ex
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_valid_ex
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_ready_0
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_valid_1
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_ready_wb
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_valid_wb
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/lsu_ready_1
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/data_stall_wb
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_ready
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_ready
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/wb_ready
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_valid
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_valid
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_valid
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/wb_valid
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/m_irq_enable
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mepc
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/dpc
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mie
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mip
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/csr_mtvec_init_if
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/dcsr
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/trigger_match_if
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/alu_jmp_id
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/alu_jmpr_id
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/alu_en_id
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/sys_en_id
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/sys_mret_insn_id
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/csr_en_raw_id
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/csr_op_id
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/csr_illegal
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/xif_csr_error_ex
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/irq_req_ctrl
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/irq_id_ctrl
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/irq_wu_ctrl
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/irq_clic_shv
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/irq_clic_level
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mnxti_irq_pending
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mnxti_irq_id
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/mnxti_irq_level
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/irq_ack
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/irq_id
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/dbg_ack
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/xif_offloading_id
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/clk
add wave -noupdate -group core /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/fetch_enable
add wave -noupdate -group {intruct obi if} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instruction_obi_i/clk
add wave -noupdate -group {intruct obi if} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instruction_obi_i/rst_n
add wave -noupdate -group {intruct obi if} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instruction_obi_i/trans_valid_i
add wave -noupdate -group {intruct obi if} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instruction_obi_i/trans_ready_o
add wave -noupdate -group {intruct obi if} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instruction_obi_i/trans_i
add wave -noupdate -group {intruct obi if} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instruction_obi_i/resp_valid_o
add wave -noupdate -group {intruct obi if} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instruction_obi_i/resp_o
add wave -noupdate -group {intruct obi if} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instruction_obi_i/state_q
add wave -noupdate -group {intruct obi if} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instruction_obi_i/next_state
add wave -noupdate -group {intruct obi if} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instruction_obi_i/obi_a_req_q
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/clk
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/rst_n
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/atomic_access_i
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/misaligned_access_i
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/core_if_data_access_i
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/bus_trans_ready_i
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/bus_trans_valid_o
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/bus_trans_o
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/bus_resp_valid_i
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/bus_resp_i
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/core_trans_valid_i
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/core_trans_ready_o
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/core_trans_i
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/core_resp_valid_o
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/core_resp_o
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/core_one_txn_pend_n
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/core_mpu_err_wait_i
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/core_mpu_err_o
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/pma_err
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/mpu_err
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/mpu_block_core
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/mpu_block_bus
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/mpu_err_trans_valid
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/mpu_err_trans_ready
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/mpu_status
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/state_q
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/state_n
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/bus_trans_cacheable
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/bus_trans_bufferable
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/core_trans_we
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/instr_fetch_access
add wave -noupdate -group mpu /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/load_access
add wave -noupdate -group pma /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/pma_i/trans_addr_i
add wave -noupdate -group pma /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/pma_i/instr_fetch_access_i
add wave -noupdate -group pma /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/pma_i/atomic_access_i
add wave -noupdate -group pma /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/pma_i/misaligned_access_i
add wave -noupdate -group pma /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/pma_i/load_access_i
add wave -noupdate -group pma /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/pma_i/pma_err_o
add wave -noupdate -group pma /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/pma_i/pma_bufferable_o
add wave -noupdate -group pma /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/pma_i/pma_cacheable_o
add wave -noupdate -group pma /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/pma_i/pma_cfg
add wave -noupdate -group pma /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/pma_i/word_addr
add wave -noupdate -group pma /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/pma_i/pma_cfg_atomic
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/clk
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/rst_n
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/fetch_branch_i
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/fetch_branch_addr_i
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/fetch_valid_i
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/fetch_ready_o
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/fetch_data_access_i
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/fetch_ptr_access_o
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/trans_valid_o
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/trans_ready_i
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/trans_addr_o
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/trans_data_access_o
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/state_q
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/next_state
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/trans_addr_q
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/trans_addr_incr
add wave -noupdate -group prefetcher /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/trans_data_access_q
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/clk
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/rst_n
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/ctrl_fsm_i
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/branch_addr_i
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/prefetch_busy_o
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/one_txn_pend_n
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/fetch_valid_o
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/fetch_ready_i
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/fetch_branch_o
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/fetch_branch_addr_o
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/fetch_data_access_o
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/fetch_ptr_access_i
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/resp_valid_i
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/resp_i
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/instr_valid_o
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/instr_ready_i
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/instr_instr_o
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/instr_addr_o
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/instr_is_ptr_o
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/instr_cnt_n
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/instr_cnt_q
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/outstanding_cnt_n
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/outstanding_cnt_q
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/outstanding_count_up
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/outstanding_count_down
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/n_incoming_ins
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/pop_q
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/n_pushed_ins
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/aligned_n
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/aligned_q
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/complete_n
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/complete_q
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/n_flush_n
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/n_flush_q
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/n_flush_branch
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/bus_err_unaligned
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/bus_err
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/mpu_status_unaligned
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/mpu_status
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/resp_valid_gated
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/is_ptr_q
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/ptr_fetch_accepted_q
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/resp_q
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/valid_n
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/valid_int
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/valid_q
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/resp_n
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/rptr
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/rptr_n
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/rptr2
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/wptr
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/wptr_n
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/addr_n
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/addr_q
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/addr_incr
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/instr
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/instr_unaligned
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/valid
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/valid_unaligned_uncompressed
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/aligned_is_compressed
add wave -noupdate -group {alignment buf} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/unaligned_is_compressed
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/clk
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/rst_n
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/jmp_target_o
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/if_id_pipe_i
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/id_ex_pipe_o
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/ex_wb_pipe_i
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/ctrl_byp_i
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/ctrl_fsm_i
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/rf_wdata_wb_i
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/rf_wdata_ex_i
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/alu_jmp_o
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/alu_jmpr_o
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/sys_mret_insn_o
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/csr_en_raw_o
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/csr_op_o
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/alu_en_o
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/sys_en_o
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/rf_re_o
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/rf_rdata_i
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/id_ready_o
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/id_valid_o
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/ex_ready_i
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_offloading_o
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/instr
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/c_instr
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/rf_re
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/rf_we
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/rf_we_dec
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/rf_waddr
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/alu_en
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/alu_bch
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/alu_jmp
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/alu_jmpr
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/alu_operator
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/mul_en
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/mul_operator
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/mul_signed_mode
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/div_en
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/div_operator
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/lsu_en
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/lsu_we
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/lsu_size
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/lsu_sext
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/lsu_atop
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/csr_en
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/csr_en_raw
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/csr_op
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/sys_en
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/sys_fencei_insn
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/sys_ecall_insn
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/sys_ebrk_insn
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/sys_mret_insn
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/sys_dret_insn
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/sys_wfi_insn
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/operand_a
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/operand_b
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/operand_c
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/operand_a_fw
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/operand_b_fw
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/jalr_fw
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/alu_op_a_mux_sel
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/alu_op_b_mux_sel
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/op_c_mux_sel
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/imm_a_mux_sel
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/imm_b_mux_sel
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/bch_jmp_mux_sel
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/imm_a
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/imm_b
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/imm_i_type
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/imm_s_type
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/imm_sb_type
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/imm_u_type
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/imm_uj_type
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/imm_z_type
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/imm_ciw_type
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/imm_cl_type
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/bch_target
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/multi_cycle_id_stall
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/illegal_insn
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/instr_valid
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_en
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_waiting
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_insn_accept
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_insn_reject
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_we
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_exception
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_dualwrite
add wave -noupdate -group {id stage} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_loadstore
add wave -noupdate -group reg_file /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/register_file_wrapper_i/register_file_i/clk
add wave -noupdate -group reg_file /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/register_file_wrapper_i/register_file_i/rst_n
add wave -noupdate -group reg_file /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/register_file_wrapper_i/register_file_i/raddr_i
add wave -noupdate -group reg_file /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/register_file_wrapper_i/register_file_i/waddr_i
add wave -noupdate -group reg_file /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/register_file_wrapper_i/register_file_i/wdata_i
add wave -noupdate -group reg_file /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/register_file_wrapper_i/register_file_i/we_i
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/compressed_valid
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/compressed_ready
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/compressed_req
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/compressed_resp
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/issue_valid
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/issue_ready
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/issue_req
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/issue_resp
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/commit_valid
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/commit
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/mem_valid
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/mem_ready
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/mem_req
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/mem_resp
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/mem_result_valid
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/mem_result
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/result_valid
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/result_ready
add wave -noupdate -group ext_if_in_id_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/result
add wave -noupdate -group {compressed decoder} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/compressed_decoder_i/instr_i
add wave -noupdate -group {compressed decoder} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/compressed_decoder_i/instr_is_ptr_i
add wave -noupdate -group {compressed decoder} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/compressed_decoder_i/instr_o
add wave -noupdate -group {compressed decoder} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/compressed_decoder_i/is_compressed_o
add wave -noupdate -group {compressed decoder} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/compressed_decoder_i/illegal_instr_o
add wave -noupdate -group {compressed decoder} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/compressed_decoder_i/instr
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/clk
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/rst_n
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/id_ex_pipe_i
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/csr_rdata_i
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/csr_illegal_i
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/csr_mnxti_read_i
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/ex_wb_pipe_o
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/ctrl_fsm_i
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/rf_wdata_o
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/branch_decision_o
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/branch_target_o
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/xif_csr_error_o
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/lsu_valid_i
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/lsu_ready_o
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/lsu_valid_o
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/lsu_ready_i
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/lsu_split_i
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/ex_ready_o
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/ex_valid_o
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/wb_ready_i
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/instr_valid
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/alu_ready
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/alu_valid
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/csr_ready
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/csr_valid
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/sys_ready
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/sys_valid
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/mul_ready
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/mul_valid
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/div_ready
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/div_valid
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/xif_ready
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/xif_valid
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/alu_result
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/alu_cmp_result
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/mul_result
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/div_result
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/mul_en_gated
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/div_en_gated
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/lsu_en_gated
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/div_en
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/div_clz_en
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/div_clz_data_rev
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/div_clz_result
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/div_shift_en
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/div_shift_amt
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/div_op_b_shifted
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/previous_exception
add wave -noupdate -group ex_stage /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/csr_is_illegal
add wave -noupdate -group {register file} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/register_file_wrapper_i/register_file_i/clk
add wave -noupdate -group {register file} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/register_file_wrapper_i/register_file_i/rst_n
add wave -noupdate -group {register file} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/register_file_wrapper_i/register_file_i/raddr_i
add wave -noupdate -group {register file} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/register_file_wrapper_i/register_file_i/waddr_i
add wave -noupdate -group {register file} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/register_file_wrapper_i/register_file_i/wdata_i
add wave -noupdate -group {register file} /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/register_file_wrapper_i/register_file_i/we_i
add wave -noupdate -divider extension
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/compressed_valid
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/compressed_ready
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/compressed_req
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/compressed_resp
add wave -noupdate -group {xif in wrapper} -color Magenta /tb_top/cv32e40x_tb_wrapper_i/xif/issue_valid
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/issue_ready
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/issue_req
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/issue_resp
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/commit_valid
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/commit
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/mem_valid
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/mem_ready
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/mem_req
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/mem_resp
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/mem_result_valid
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/mem_result
add wave -noupdate -group {xif in wrapper} -color Orange /tb_top/cv32e40x_tb_wrapper_i/xif/result_valid
add wave -noupdate -group {xif in wrapper} /tb_top/cv32e40x_tb_wrapper_i/xif/result_ready
add wave -noupdate -group {xif in wrapper} -color {Cornflower Blue} /tb_top/cv32e40x_tb_wrapper_i/xif/result
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/clk_i
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/rst_ni
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/signals_csr_i
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/samples_csr_i
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/state_SN
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/state_SP
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/rd_cntb_i
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/rd_wbits_i
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/ld_op_SN
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/ld_op_SP
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/rs0_DP
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/rs0_DN
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/rs1_DP
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/rs1_DN
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/issue_ready_SP
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/issue_ready_SN
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/rd_DP
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/rd_DN
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/rd_addr_DP
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/rd_addr_DN
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/writeback_SP
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/writeback_SN
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/accept_SP
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/accept_SN
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_done_i
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_done_i
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_start_o
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_start_o
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/instr_id_DP
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/instr_id_DN
add wave -noupdate -group {copopoc fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/inc_addr_i
add wave -noupdate -group {cntb fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/clk_i
add wave -noupdate -group {cntb fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/rst_ni
add wave -noupdate -group {cntb fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/rd_i
add wave -noupdate -group {cntb fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/start_i
add wave -noupdate -group {cntb fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/rs0_i
add wave -noupdate -group {cntb fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/rs1_i
add wave -noupdate -group {cntb fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/rd_o
add wave -noupdate -group {cntb fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/cntb_done_o
add wave -noupdate -group {cntb fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/right_shift_DP
add wave -noupdate -group {cntb fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/right_shift_DN
add wave -noupdate -group {cntb fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/state_SN
add wave -noupdate -group {cntb fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/state_SP
add wave -noupdate -group {cntb fsm} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/i
add wave -noupdate -group {and logic cntb} {/tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/genblk1[2]/cb/rs0_i}
add wave -noupdate -group {and logic cntb} {/tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/genblk1[2]/cb/right_shift_i}
add wave -noupdate -group {and logic cntb} {/tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/genblk1[2]/cb/top_bits_set_i}
add wave -noupdate -group {and logic cntb} {/tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/genblk1[2]/cb/result_o}
add wave -noupdate -group {and logic cntb check for 8} {/tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/genblk1[0]/cb/rs0_i}
add wave -noupdate -group {and logic cntb check for 8} {/tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/genblk1[0]/cb/right_shift_i}
add wave -noupdate -group {and logic cntb check for 8} {/tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/genblk1[0]/cb/top_bits_set_i}
add wave -noupdate -group {and logic cntb check for 8} {/tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/genblk1[0]/cb/result_o}
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/clk_i
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/rst_ni
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/start_i
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/address_i
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/inc_addr_o
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/offset
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/rd_i
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/rd_o
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/done_o
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/state_SN
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/state_SP
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/start_read_SP
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/start_read_SN
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/shift_4_sigs_o
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/curr_signal_SP
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/curr_signal_SN
add wave -noupdate -group wbits /tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/i
add wave -noupdate -group {read mem} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/read_mem_i/clk_i
add wave -noupdate -group {read mem} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/read_mem_i/rst_ni
add wave -noupdate -group {read mem} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/read_mem_i/state_SN
add wave -noupdate -group {read mem} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/read_mem_i/state_SP
add wave -noupdate -group {read mem} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/read_mem_i/mem_valid_SN
add wave -noupdate -group {read mem} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/read_mem_i/mem_valid_SP
add wave -noupdate -group {read mem} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/read_mem_i/last_SN
add wave -noupdate -group {read mem} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/read_mem_i/last_SP
add wave -noupdate -group {read mem} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/read_mem_i/data_read_DN
add wave -noupdate -group {read mem} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/read_mem_i/data_read_DP
add wave -noupdate -group {rmem interface} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/if_rmem_i/start
add wave -noupdate -group {rmem interface} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/if_rmem_i/done
add wave -noupdate -group {rmem interface} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/if_rmem_i/rdata
add wave -noupdate -group {rmem interface} /tb_top/cv32e40x_tb_wrapper_i/coproc_i/if_rmem_i/addr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {82380000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {144721500 ps}
