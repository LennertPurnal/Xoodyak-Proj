
}
Sourcing tcl script '%s'
201*common2@
,/home/lennert/.Xilinx/Vivado/Vivado_init.tcl2default:defaultZ17-201h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental /home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/utils_1/imports/synth_1/soc.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2{
g/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/utils_1/imports/synth_1/soc.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
?
Command: %s
53*	vivadotcl2T
@synth_design -top soc -part xc7z020clg400-1 -mode out_of_context2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
a
#Helper process launched with PID %s4824*oasys2
2062572default:defaultZ8-7075h px? 
?
%s*synth2?
?Starting Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2601.129 ; gain = 0.000 ; free physical = 4115 ; free virtual = 11499
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
soc2default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/soc/soc.vhd2default:default2
492default:default8@Z8-638h px? 
v
%s
*synth2^
J	Parameter G_BASE_ADDRESS bound to: 32'b10000001000000000000000000000000 
2default:defaulth p
x
? 
v
%s
*synth2^
J	Parameter G_HIGH_ADDRESS bound to: 32'b10000001000000000000111111111111 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
APB_counter2default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/fblocks/counter/APB_counter.vhd2default:default2
232default:default2&
APB_counter_inst002default:default2
APB_counter2default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/soc/soc.vhd2default:default2
1452default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
APB_counter2default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/fblocks/counter/APB_counter.vhd2default:default2
452default:default8@Z8-638h px? 
m
%s
*synth2U
A	Parameter G_BASE_ADDRESS bound to: -2130706432 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter G_HIGH_ADDRESS bound to: -2130702337 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
APB_counter2default:default2
12default:default2
12default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/fblocks/counter/APB_counter.vhd2default:default2
452default:default8@Z8-256h px? 
v
%s
*synth2^
J	Parameter G_BASE_ADDRESS bound to: 32'b10000001000100000000000000000000 
2default:defaulth p
x
? 
v
%s
*synth2^
J	Parameter G_HIGH_ADDRESS bound to: 32'b10000001000100000000111111111111 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

APB_xoodoo2default:default2T
@/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodoo/APB_xoodoo.vhd2default:default2
162default:default2%
APB_xoodoo_inst002default:default2

APB_xoodoo2default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/soc/soc.vhd2default:default2
1642default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2

APB_xoodoo2default:default2V
@/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodoo/APB_xoodoo.vhd2default:default2
382default:default8@Z8-638h px? 
m
%s
*synth2U
A	Parameter G_BASE_ADDRESS bound to: -2129657856 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter G_HIGH_ADDRESS bound to: -2129653761 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
xoodoo_permute2default:default2X
D/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodoo/xoodoo_permute.vhd2default:default2
182default:default2)
xoodoo_permute_inst002default:default2"
xoodoo_permute2default:default2V
@/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodoo/APB_xoodoo.vhd2default:default2
2262default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2"
xoodoo_permute2default:default2Z
D/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodoo/xoodoo_permute.vhd2default:default2
302default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
xoodoo_round2default:default2V
B/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodoo/xoodoo_round.vhd2default:default2
192default:default2'
xoodoo_round_inst002default:default2 
xoodoo_round2default:default2Z
D/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodoo/xoodoo_permute.vhd2default:default2
1262default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
xoodoo_round2default:default2X
B/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodoo/xoodoo_round.vhd2default:default2
272default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
xoodoo_round2default:default2
22default:default2
12default:default2X
B/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodoo/xoodoo_round.vhd2default:default2
272default:default8@Z8-256h px? 
?
n3D RAM %s  for this pattern/configuration is not supported. This will most likely be implemented in registers
4275*oasys2"
state_in_i_reg2default:defaultZ8-5856h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
xoodoo_permute2default:default2
32default:default2
12default:default2Z
D/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodoo/xoodoo_permute.vhd2default:default2
302default:default8@Z8-256h px? 
?
n3D RAM %s  for this pattern/configuration is not supported. This will most likely be implemented in registers
4275*oasys2 
state_in_reg2default:defaultZ8-5856h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

APB_xoodoo2default:default2
42default:default2
12default:default2V
@/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodoo/APB_xoodoo.vhd2default:default2
382default:default8@Z8-256h px? 
x
%s
*synth2`
L	Parameter G_BASE_ADDRESS_0 bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
? 
x
%s
*synth2`
L	Parameter G_HIGH_ADDRESS_0 bound to: 32'b00000000000000000011111111111111 
2default:defaulth p
x
? 
x
%s
*synth2`
L	Parameter G_BASE_ADDRESS_1 bound to: 32'b10000000000000000000000000000000 
2default:defaulth p
x
? 
x
%s
*synth2`
L	Parameter G_HIGH_ADDRESS_1 bound to: 32'b10000000000000000000000000000100 
2default:defaulth p
x
? 
x
%s
*synth2`
L	Parameter G_BASE_ADDRESS_2 bound to: 32'b10000001000000000000000000000000 
2default:defaulth p
x
? 
x
%s
*synth2`
L	Parameter G_HIGH_ADDRESS_2 bound to: 32'b10000001000000000000111111111111 
2default:defaulth p
x
? 
x
%s
*synth2`
L	Parameter G_BASE_ADDRESS_3 bound to: 32'b10000001000100000000000000000000 
2default:defaulth p
x
? 
x
%s
*synth2`
L	Parameter G_HIGH_ADDRESS_3 bound to: 32'b10000001000100000000111111111111 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
apb_bus2default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/soc/APB_bus.vhd2default:default2
222default:default2"
apb_bus_inst002default:default2
apb_bus2default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/soc/soc.vhd2default:default2
1852default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
apb_bus2default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/soc/APB_bus.vhd2default:default2
992default:default8@Z8-638h px? 
e
%s
*synth2M
9	Parameter G_BASE_ADDRESS_0 bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_HIGH_ADDRESS_0 bound to: 16383 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter G_BASE_ADDRESS_1 bound to: -2147483648 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter G_HIGH_ADDRESS_1 bound to: -2147483644 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter G_BASE_ADDRESS_2 bound to: -2130706432 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter G_HIGH_ADDRESS_2 bound to: -2130702337 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter G_BASE_ADDRESS_3 bound to: -2129657856 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter G_HIGH_ADDRESS_3 bound to: -2129653761 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
apb_bus2default:default2
52default:default2
12default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/soc/APB_bus.vhd2default:default2
992default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
picorv32_apb_adapter2default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/picorv32/picorv32_apb_adapter.vhd2default:default2
222default:default2/
picorv32_apb_adapter_inst002default:default2(
picorv32_apb_adapter2default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/soc/soc.vhd2default:default2
2542default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2(
picorv32_apb_adapter2default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/picorv32/picorv32_apb_adapter.vhd2default:default2
512default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2(
picorv32_apb_adapter2default:default2
62default:default2
12default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/picorv32/picorv32_apb_adapter.vhd2default:default2
512default:default8@Z8-256h px? 
W
%s
*synth2?
+	Parameter ENABLE_COUNTERS bound to: 1'b1 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter ENABLE_COUNTERS64 bound to: 1'b1 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter ENABLE_REGS_16_31 bound to: 1'b1 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter ENABLE_REGS_DUALPORT bound to: 1'b1 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter LATCHED_MEM_RDATA bound to: 1'b0 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter TWO_STAGE_SHIFT bound to: 1'b1 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter BARREL_SHIFTER bound to: 1'b0 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter TWO_CYCLE_COMPARE bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter TWO_CYCLE_ALU bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter COMPRESSED_ISA bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter CATCH_MISALIGN bound to: 1'b1 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter CATCH_ILLINSN bound to: 1'b1 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter ENABLE_PCPI bound to: 1'b0 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter ENABLE_MUL bound to: 1'b0 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter ENABLE_FAST_MUL bound to: 1'b0 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter ENABLE_DIV bound to: 1'b0 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter ENABLE_IRQ bound to: 1'b0 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter ENABLE_IRQ_QREGS bound to: 1'b1 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter ENABLE_IRQ_TIMER bound to: 1'b1 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter ENABLE_TRACE bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter REGS_INIT_ZERO bound to: 1'b0 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter MASKED_IRQ bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
? 
s
%s
*synth2[
G	Parameter LATCHED_IRQ bound to: 32'b11111111111111111111111111111111 
2default:defaulth p
x
? 
v
%s
*synth2^
J	Parameter PROGADDR_RESET bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
? 
t
%s
*synth2\
H	Parameter PROGADDR_IRQ bound to: 32'b00000000000000000000000000010000 
2default:defaulth p
x
? 
q
%s
*synth2Y
E	Parameter STACKADDR bound to: 32'b11111111111111111111111111111111 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
picorv322default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
622default:default2#
picorv32_inst002default:default2
picorv322default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/soc/soc.vhd2default:default2
2762default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2
picorv322default:default2
 2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
622default:default8@Z8-6157h px? 
W
%s
*synth2?
+	Parameter ENABLE_COUNTERS bound to: 1'b1 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter ENABLE_COUNTERS64 bound to: 1'b1 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter ENABLE_REGS_16_31 bound to: 1'b1 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter ENABLE_REGS_DUALPORT bound to: 1'b1 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter LATCHED_MEM_RDATA bound to: 1'b0 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter TWO_STAGE_SHIFT bound to: 1'b1 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter BARREL_SHIFTER bound to: 1'b0 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter TWO_CYCLE_COMPARE bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter TWO_CYCLE_ALU bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter COMPRESSED_ISA bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter CATCH_MISALIGN bound to: 1'b1 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter CATCH_ILLINSN bound to: 1'b1 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter ENABLE_PCPI bound to: 1'b0 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter ENABLE_MUL bound to: 1'b0 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter ENABLE_FAST_MUL bound to: 1'b0 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter ENABLE_DIV bound to: 1'b0 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter ENABLE_IRQ bound to: 1'b0 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter ENABLE_IRQ_QREGS bound to: 1'b1 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter ENABLE_IRQ_TIMER bound to: 1'b1 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter ENABLE_TRACE bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter REGS_INIT_ZERO bound to: 1'b0 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter MASKED_IRQ bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
? 
s
%s
*synth2[
G	Parameter LATCHED_IRQ bound to: 32'b11111111111111111111111111111111 
2default:defaulth p
x
? 
v
%s
*synth2^
J	Parameter PROGADDR_RESET bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
? 
t
%s
*synth2\
H	Parameter PROGADDR_IRQ bound to: 32'b00000000000000000000000000010000 
2default:defaulth p
x
? 
q
%s
*synth2Y
E	Parameter STACKADDR bound to: 32'b11111111111111111111111111111111 
2default:defaulth p
x
? 
?
case item %s is unreachable151*oasys2
1'b02default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
12642default:default8@Z8-151h px? 
?
case item %s is unreachable151*oasys2
1'b02default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
13102default:default8@Z8-151h px? 
?
-case statement is not full and has no default155*oasys2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
13102default:default8@Z8-155h px? 
?
case item %s is unreachable151*oasys2
1'b02default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14932default:default8@Z8-151h px? 
?
-case statement is not full and has no default155*oasys2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14932default:default8@Z8-155h px? 
?
case item %s is unreachable151*oasys2
1'b02default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
15792default:default8@Z8-151h px? 
?
case item %s is unreachable151*oasys2
1'b02default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
15792default:default8@Z8-151h px? 
?
case item %s is unreachable151*oasys2
1'b02default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
15792default:default8@Z8-151h px? 
?
case item %s is unreachable151*oasys2
1'b02default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
15792default:default8@Z8-151h px? 
?
case item %s is unreachable151*oasys2
1'b02default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
15792default:default8@Z8-151h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2,
mem_la_firstword_reg_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
3922default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
last_mem_valid_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
3932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2(
next_insn_opcode_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
4332default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2)
mem_la_secondword_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
5712default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2,
prefetched_high_word_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
5722default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
q_ascii_instr_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
7772default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
q_insn_imm_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
7782default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
q_insn_opcode_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
7792default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
q_insn_rs1_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
7802default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
q_insn_rs2_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
7812default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
q_insn_rd_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
7822default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2 
dbg_next_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
7832default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
dbg_valid_insn_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
7862default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2*
cached_ascii_instr_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
7912default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2'
cached_insn_imm_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
7922default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2*
cached_insn_opcode_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
7942default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2'
cached_insn_rs1_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
7972default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2'
cached_insn_rs2_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
7982default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
cached_insn_rd_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
7992default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
dbg_insn_addr_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
8032default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys24
 clear_prefetched_high_word_q_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
12882default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2(
set_mem_do_rinst_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14012default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2(
set_mem_do_rdata_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14022default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2(
set_mem_do_wdata_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14032default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
alu_out_0_q_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14052default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2 
alu_wait_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14082default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
alu_wait_2_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14092default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
dbg_rs1val_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14122default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
dbg_rs2val_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14132default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2(
dbg_rs1val_valid_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14142default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2(
dbg_rs2val_valid_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14152default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2(
next_irq_pending_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14352default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2)
decoder_trigger_q_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14422default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys20
decoder_pseudo_trigger_q_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14442default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
latched_trace_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14602default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
irq_active_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14662default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
irq_delay_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14672default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2 
irq_mask_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14682default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
irq_state_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14702default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	timer_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14722default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
current_pc_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14902default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
irq_pending_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
19582default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
trace_valid_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14472default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2*
instr_ecall_ebreak_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
10842default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2$
pcpi_timeout_reg2default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
14652default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
picorv322default:default2
 2default:default2
72default:default2
12default:default2?
r/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/picorv32/picorv32.v2default:default2
622default:default8@Z8-6155h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
soc2default:default2
82default:default2
12default:default2?
?/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.srcs/sources_1/imports/HWSW/exercises/hwswcodesign-labs/3_soc/vhdl/soc/soc.vhd2default:default2
492default:default8@Z8-256h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_wr2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[31]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[30]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[29]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[28]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[27]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[26]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[25]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[24]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[23]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[22]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[21]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[20]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[19]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[18]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[17]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[16]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[15]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[14]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[13]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[12]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[11]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[10]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

pcpi_rd[9]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

pcpi_rd[8]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

pcpi_rd[7]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

pcpi_rd[6]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

pcpi_rd[5]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

pcpi_rd[4]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

pcpi_rd[3]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

pcpi_rd[2]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

pcpi_rd[1]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

pcpi_rd[0]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	pcpi_wait2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

pcpi_ready2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[31]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[30]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[29]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[28]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[27]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[26]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[25]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[24]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[23]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[22]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[21]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[20]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[19]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[18]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[17]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[16]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[15]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[14]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[13]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[12]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[11]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[10]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[9]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[8]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[7]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[6]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[5]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[4]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[3]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[2]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[1]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
irq[0]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
PSLVERR2default:default2(
picorv32_apb_adapter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	mem_instr2default:default2(
picorv32_apb_adapter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
PCLK2default:default2
apb_bus2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
PRESETn2default:default2
apb_bus2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
cr[7]2default:default2"
xoodoo_permute2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
cr[6]2default:default2"
xoodoo_permute2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
cr[5]2default:default2"
xoodoo_permute2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
cr[4]2default:default2"
xoodoo_permute2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
cr[3]2default:default2"
xoodoo_permute2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
cr[2]2default:default2"
xoodoo_permute2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
cr[1]2default:default2"
xoodoo_permute2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
PPROT[2]2default:default2

APB_xoodoo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
PPROT[1]2default:default2

APB_xoodoo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
PPROT[0]2default:default2

APB_xoodoo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
PPROT[2]2default:default2
APB_counter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
PPROT[1]2default:default2
APB_counter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
PPROT[0]2default:default2
APB_counter2default:defaultZ8-7129h px? 
?
%s*synth2?
?Finished Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 2601.129 ; gain = 0.000 ; free physical = 4876 ; free virtual = 12266
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2601.129 ; gain = 0.000 ; free physical = 4881 ; free virtual = 12267
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2609.031 ; gain = 7.902 ; free physical = 4881 ; free virtual = 12267
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2"
xoodoo_permute2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
mem_state_reg2default:default2
picorv322default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    init |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                 running |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                    done |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2"
xoodoo_permute2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE2 |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                               01 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                               10 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                               11 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
mem_state_reg2default:default2

sequential2default:default2
picorv322default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:10 . Memory (MB): peak = 2609.031 ; gain = 7.902 ; free physical = 4712 ; free virtual = 12105
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   31 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit         XORs := 128   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 928   
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               36 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 42    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 81    
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	             1024 Bit	(32 X 32 bit)          RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 28    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit        Muxes := 14    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   31 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    5 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    4 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 35    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  15 Input    1 Bit        Muxes := 14    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    1 Bit        Muxes := 25    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_wr2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[31]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[30]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[29]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[28]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[27]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[26]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[25]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[24]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[23]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[22]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[21]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[20]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[19]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[18]2default:default2
picorv322default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
pcpi_rd[17]2default:default2
picorv322default:defaultZ8-7129h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:22 . Memory (MB): peak = 2609.031 ; gain = 7.902 ; free physical = 4539 ; free virtual = 11932
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping Report (see note below)
2default:defaulth px? 

%s*synth2g
S+----------------+-------------+-----------+----------------------+--------------+
2default:defaulth px? 
?
%s*synth2h
T|Module Name     | RTL Object  | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth px? 

%s*synth2g
S+----------------+-------------+-----------+----------------------+--------------+
2default:defaulth px? 
?
%s*synth2h
T|picorv32_inst00 | cpuregs_reg | Implied   | 32 x 32              | RAM32M x 12  | 
2default:defaulth px? 
?
%s*synth2h
T+----------------+-------------+-----------+----------------------+--------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Timing Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:23 . Memory (MB): peak = 2609.031 ; gain = 7.902 ; free physical = 4536 ; free virtual = 11928
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
S
%s
*synth2;
'
Distributed RAM: Final Mapping Report
2default:defaulth p
x
? 

%s
*synth2g
S+----------------+-------------+-----------+----------------------+--------------+
2default:defaulth p
x
? 
?
%s
*synth2h
T|Module Name     | RTL Object  | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth p
x
? 

%s
*synth2g
S+----------------+-------------+-----------+----------------------+--------------+
2default:defaulth p
x
? 
?
%s
*synth2h
T|picorv32_inst00 | cpuregs_reg | Implied   | 32 x 32              | RAM32M x 12  | 
2default:defaulth p
x
? 
?
%s
*synth2h
T+----------------+-------------+-----------+----------------------+--------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:00:25 ; elapsed = 00:00:24 . Memory (MB): peak = 2609.031 ; gain = 7.902 ; free physical = 4540 ; free virtual = 11933
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished IO Insertion : Time (s): cpu = 00:00:29 ; elapsed = 00:00:27 . Memory (MB): peak = 2609.031 ; gain = 7.902 ; free physical = 4545 ; free virtual = 11938
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:29 ; elapsed = 00:00:27 . Memory (MB): peak = 2609.031 ; gain = 7.902 ; free physical = 4545 ; free virtual = 11938
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 2609.031 ; gain = 7.902 ; free physical = 4543 ; free virtual = 11936
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 2609.031 ; gain = 7.902 ; free physical = 4543 ; free virtual = 11936
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 2609.031 ; gain = 7.902 ; free physical = 4543 ; free virtual = 11936
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 2609.031 ; gain = 7.902 ; free physical = 4543 ; free virtual = 11936
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|1     |CARRY4   |    91|
2default:defaulth px? 
F
%s*synth2.
|2     |LUT1     |     6|
2default:defaulth px? 
F
%s*synth2.
|3     |LUT2     |   178|
2default:defaulth px? 
F
%s*synth2.
|4     |LUT3     |   129|
2default:defaulth px? 
F
%s*synth2.
|5     |LUT4     |   730|
2default:defaulth px? 
F
%s*synth2.
|6     |LUT5     |   238|
2default:defaulth px? 
F
%s*synth2.
|7     |LUT6     |  1044|
2default:defaulth px? 
F
%s*synth2.
|8     |MUXF7    |     1|
2default:defaulth px? 
F
%s*synth2.
|9     |RAM32M   |    10|
2default:defaulth px? 
F
%s*synth2.
|10    |RAM32X1D |     4|
2default:defaulth px? 
F
%s*synth2.
|11    |FDCE     |   921|
2default:defaulth px? 
F
%s*synth2.
|12    |FDPE     |     1|
2default:defaulth px? 
F
%s*synth2.
|13    |FDRE     |   552|
2default:defaulth px? 
F
%s*synth2.
|14    |FDSE     |    21|
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
q
%s
*synth2Y
E+------+------------------------------+---------------------+------+
2default:defaulth p
x
? 
q
%s
*synth2Y
E|      |Instance                      |Module               |Cells |
2default:defaulth p
x
? 
q
%s
*synth2Y
E+------+------------------------------+---------------------+------+
2default:defaulth p
x
? 
q
%s
*synth2Y
E|1     |top                           |                     |  3926|
2default:defaulth p
x
? 
q
%s
*synth2Y
E|2     |  APB_counter_inst00          |APB_counter          |   137|
2default:defaulth p
x
? 
q
%s
*synth2Y
E|3     |  APB_xoodoo_inst00           |APB_xoodoo           |  1838|
2default:defaulth p
x
? 
q
%s
*synth2Y
E|4     |    xoodoo_permute_inst00     |xoodoo_permute       |  1408|
2default:defaulth p
x
? 
q
%s
*synth2Y
E|5     |  picorv32_apb_adapter_inst00 |picorv32_apb_adapter |     1|
2default:defaulth p
x
? 
q
%s
*synth2Y
E|6     |  picorv32_inst00             |picorv32             |  1950|
2default:defaulth p
x
? 
q
%s
*synth2Y
E+------+------------------------------+---------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 2609.031 ; gain = 7.902 ; free physical = 4543 ; free virtual = 11936
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 222 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 2609.031 ; gain = 7.902 ; free physical = 4544 ; free virtual = 11937
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 2609.039 ; gain = 7.902 ; free physical = 4544 ; free virtual = 11937
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.032default:default2
00:00:00.032default:default2
2609.0392default:default2
0.0002default:default2
46352default:default2
120282default:defaultZ17-722h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1062default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2665.0592default:default2
0.0002default:default2
45562default:default2
119492default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 14 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 10 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 4 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
8dc7683b2default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
452default:default2
1572default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:372default:default2
00:00:302default:default2
2665.0592default:default2
64.0312default:default2
47602default:default2
121532default:defaultZ17-722h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2k
W/home/lennert/HWSW/xoodyak/hwswcd/hardware/xoodyak_SOC/xoodyak_SOC.runs/synth_1/soc.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:062default:default2
00:00:062default:default2
2860.8872default:default2
195.8282default:default2
44072default:default2
118012default:defaultZ17-722h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file soc_utilization_synth.rpt -pb soc_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri May 13 15:07:46 20222default:defaultZ17-206h px? 


End Record