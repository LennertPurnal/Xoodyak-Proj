-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Wed May 11 16:40:16 2022
-- Host        : laptopENVY running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.gen/sources_1/ip/blk_mem_round_constants/blk_mem_round_constants_stub.vhdl
-- Design      : blk_mem_round_constants
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity blk_mem_round_constants is
  Port ( 
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end blk_mem_round_constants;

architecture stub of blk_mem_round_constants is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,addra[3:0],douta[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_5,Vivado 2021.2";
begin
end;
