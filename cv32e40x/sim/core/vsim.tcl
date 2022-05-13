


add wave -group "insrtcn" tb_top.core_clk
add wave -group "insrtcn" tb_top.cv32e40x_tb_wrapper_i.instr_rdata
add wave -group "if_interface" tb_top.cv32e40x_tb_wrapper_i.cv32e40x_core_i.if_stage_i.*
add wave -group "wrapper" tb_top.cv32e40x_tb_wrapper_i.*
add wave -group "ram" tb_top.cv32e40x_tb_wrapper_i.ram_i.*
