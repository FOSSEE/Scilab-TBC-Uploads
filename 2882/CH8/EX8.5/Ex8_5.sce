//Tested on Windows 7 Ultimate 32-bit
//Chapter 8 Power Amplifiers Pg no. 277,278 and 279
clear;
clc;

//Given Data
//Figure 8.13

VCC=20;//collector supply voltage in volts
RC=270;//collector resistance in ohms
RE=150;//emitter resistance in ohms
R1=3.3D3;//divider network resistance R1 in ohms
R2=1.5D3;//divider network resistance R2 in ohms
VBE=0.7;//forward voltage drop of emitter diode in volts
B=100;//DC CE current gain beta
RL=470;//load resistance in ohms
C1=15D-6;//input coupling capacitance in farads
C2=15D-6;//output coupling capacitance in farads

//Solution

VB=VCC*R2/(R1+R2);//base to ground voltage in volts
VE=VB-VBE;//emitter to ground voltage in volts
IE=VE/RE;//emitter current in amperes
ICQ=IE;//neglecting base current, collector current is equal to emitter current in amperes
VC=VCC-ICQ*RC;//collector to ground voltage in volts
VCEQ=VC-VE;//collector to emitter quiscent voltage in volts
PD=VCEQ*ICQ;//power dissipation in watts
RL_dash=RC*RL/(RC+RL);//equivalent a.c. load resistance in ohms
IC_sat=ICQ+VCEQ/RL_dash;//saturation collector current in amperes
VCE_cutoff=VCEQ+ICQ*RL_dash;//cutoff collector to emitter voltage in volts
Pout=0.5*ICQ^2*RL_dash;//output a.c. power in watts
e=Pout/VCC/ICQ;//efficiency of circuit = Pout/Pin(dc)
printf("(a) The minimum transistor power rating required PD = %.3f Watts\n ",PD);
printf("(b) AC output power Pout = %d milli-Watts\n ",Pout*10^3);
printf("(c) Efficiency of the amplifier η = %.2f\n ",e);

//decimal approximation taken here in efficiency
