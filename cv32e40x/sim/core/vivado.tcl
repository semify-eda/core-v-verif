write_cfgmem -format bin -size 64 -loadbit\
    "up 0x0 /home/mario/uni/sem10/bachelorarbeit/gitclone/semify/wfg/brle/vivado_cv32e40x/vivado_cv32e40x.runs/impl_1/synth_top.bit" /home/mario/sim_core/hello-world


source /home/mario/uni/sem10/bachelorarbeit/gitclone/prjxray-bram-patch/testing/mdd_make.tcl
mddMake synth.mdd
