radix hex
config wave -signalnamewidth 1

add wave -group "insrtcn" tb_top.core_clk
add wave -group "insrtcn" tb_top.cv32e40x_tb_wrapper_i.instr_rdata
add wave -group "if_interface" tb_top.cv32e40x_tb_wrapper_i.cv32e40x_core_i.if_stage_i.*
add wave -group "wrapper" tb_top.cv32e40x_tb_wrapper_i.*
add wave -group "ram" tb_top.cv32e40x_tb_wrapper_i.ram_i.*
add wave -group "pc target" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/cv32e40x_pc_target_i/*
add wave -group "core" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/*
add wave -group "intruct obi if" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/instruction_obi_i/*
add wave -group "mpu" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/*
add wave -group "pma" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/mpu_i/pma_i/*
add wave -group "prefetcher" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/prefetcher_i/*
add wave -group "alignment buf" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/prefetch_unit_i/alignment_buffer_i/*
add wave -group "id stage" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/*
add wave -group "reg_file" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/register_file_wrapper_i/register_file_i/*
add wave -group "ext_if_in_id_stage" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/*
add wave -group "compressed decoder" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/compressed_decoder_i/*
add wave -group "ex_stage" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/*
add wave -group "register file" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/register_file_wrapper_i/register_file_i/*
add wave -group "sp byte ram" sim:/tb_top/cv32e40x_tb_wrapper_i/ram_i/sp_byteram_i/*
add wave -group "sp 4byte ram" sim:/tb_top/cv32e40x_tb_wrapper_i/ram_i/sp_4byteram_i/*
add wave -divider "extension" 
add wave -group "xif in wrapper"  /tb_top/cv32e40x_tb_wrapper_i/xif/*
add wave -group "copopoc fsm" /tb_top/cv32e40x_tb_wrapper_i/coproc_i/*
add wave -group "cntb fsm" /tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/*
add wave -group "and logic cntb" tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/genblk1[2]/cb/*
add wave -group "and logic cntb check for 8" tb_top/cv32e40x_tb_wrapper_i/coproc_i/cntb_i/genblk1[0]/cb/*
add wave -group "wbits" sim:/tb_top/cv32e40x_tb_wrapper_i/coproc_i/wbits_i/*
add wave -group "read mem" sim:/tb_top/cv32e40x_tb_wrapper_i/coproc_i/read_mem_i/*
add wave -group "rmem interface" sim:/tb_top/cv32e40x_tb_wrapper_i/coproc_i/if_rmem_i/*
#5620ns
