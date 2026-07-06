mkdir -p simulate && cd simulate && verilator --binary -j 0 -Wno-fatal --Wall --trace --timing --top-module tb_alu +define+UVM_NO_DPI -f $TB_HOME/filelist.f && ./obj_dir/Vtb_alu
