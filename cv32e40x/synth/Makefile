.DEFAULT_GOAL := all


cv32e40x_core_files := /home/mario/uni/sem10/bachelorarbeit/gitclone/semify_brle/core-v-verif/core-v-cores/cv32e40x/rtl
verilog_tb_files := /home/mario/uni/sem10/bachelorarbeit/gitclone/semify_brle/core-v-verif/cv32e40x/tb/core
hexfile :=  /home/mario/uni/sem10/bachelorarbeit/gitclone/semify_brle/core-v-verif/cv32e40x/sim/core/hello-world/hello-world.hex
yosys_exe := /run/media/mario/DATA_SSD/linux_data/gitclone/yosys/yosys

all: yosys ulx3s_out ulx3s.bit prog

cphex:
	mkdir -p ./hello-world/
	cp $(hexfile) \
	   ./hello-world/hello-world.hex

sv2v: cphex
	sv2v -v -w adjacent \
       --incdir=/home/mario/uni/sem10/bachelorarbeit/gitclone/semify_brle/core-v-verif/core-v-cores/cv32e40x/rtl/include/ \
       $(cv32e40x_core_files)/include/*.sv \
       $(cv32e40x_core_files)/*.sv \
       $(cv32e40x_core_files)/jtag_dbg/*.sv \
       $(cv32e40x_core_files)/uart/*.sv \
       $(cv32e40x_core_files)/common_pulp_cells/*.sv \
       $(verilog_tb_files)/*.sv \

	rm  $(verilog_tb_files)/tb_top.v
	rm  $(verilog_tb_files)/tb_top_verilator.v

yosys: sv2v
	$(yosys_exe) -ql ulx3s-yosys.log -p "read -sv $(verilog_tb_files)/*.v" \
																 -p	"read -sv $(cv32e40x_core_files)/*.v" \
																 -p	"read -sv $(cv32e40x_core_files)/jtag_dbg/*.v" \
	                               -p	"read -sv $(cv32e40x_core_files)/uart/*.v" \
																 -p	"read -sv $(cv32e40x_core_files)/common_pulp_cells/*.v" \
																 -p	"read -sv $(cv32e40x_core_files)/../bhv/cv32e40x_sim_clock_gate.sv" \
                                 -p "hierarchy -top synth_top" \
                                 -p "synth_ecp5" \
                                 -p "json -o netlist.json" \
                                 -p "write_verilog synth.v"

ulx3s_out:
	nextpnr-ecp5 --85k --json netlist.json \
		--lpf ulx3s_v20.lpf \
		--package CABGA381 \
		--textcfg ulx3s_out.config \
    --lpf-allow-unconstrained

ulx3s.bit:
	ecppack ulx3s_out.config ulx3s.bit

prog:
	openFPGALoader --board=ulx3s ulx3s.bit

clean:
	rm -rf design/*/sim/sim_build
	rm -rf design/*/sim/*.vcd
	rm -rf design/*/sim/*.xml
	rm -f ulx3s_out.config
	rm -f ulx3s-yosys.log
	rm -f ulx3s.json
	rm -f ulx3s.bit

.PHONY: ulx3s_out ulx3s.bit templates unit-tests lint lint-autofix format clean prog_ulx3s
