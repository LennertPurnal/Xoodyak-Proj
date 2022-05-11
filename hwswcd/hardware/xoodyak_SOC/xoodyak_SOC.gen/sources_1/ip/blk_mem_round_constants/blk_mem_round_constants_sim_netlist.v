// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Wed May 11 16:40:16 2022
// Host        : laptopENVY running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.gen/sources_1/ip/blk_mem_round_constants/blk_mem_round_constants_sim_netlist.v
// Design      : blk_mem_round_constants
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_round_constants,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module blk_mem_round_constants
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
  blk_mem_round_constants_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18768)
`pragma protect data_block
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
anTOtwCa0MPbmvCgjFEW
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
