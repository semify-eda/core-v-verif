


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
add wave -group "xif in wrapper" /tb_top/cv32e40x_tb_wrapper_i/xif/*
add wave -group "ext_if_in_id_stage" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/id_stage_i/xif_issue_if/*
add wave -group "compressed decoder" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/if_stage_i/compressed_decoder_i/*
add wave -group "ex_stage" /tb_top/cv32e40x_tb_wrapper_i/cv32e40x_core_i/ex_stage_i/*
run 69410ns
