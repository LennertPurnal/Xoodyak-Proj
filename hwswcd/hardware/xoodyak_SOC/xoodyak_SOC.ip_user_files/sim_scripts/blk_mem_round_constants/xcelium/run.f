-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../xoodyak_SOC.gen/sources_1/ip/blk_mem_round_constants/sim/blk_mem_round_constants.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

