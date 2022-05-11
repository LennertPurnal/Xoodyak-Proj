// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Wed May 11 16:40:16 2022
// Host        : laptopENVY running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_round_constants_sim_netlist.v
// Design      : blk_mem_round_constants
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_round_constants,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [31:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_round_constants.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_round_constants.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18672)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
