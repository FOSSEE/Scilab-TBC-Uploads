//Tested on Windows 7 Ultimate 32-bit
//Chapter 8 Power Amplifiers Pg no. 279 and 280
clear;
clc;

//Given Data
//Figure 8.15

VCC=25;//collector supply voltage in volts
RL=25;//load collector resistance in ohms
RB=1.5D3;//base resistance in ohms
VBE=0.7;//forward voltage drop of emitter diode in volts
B=50;//DC CE current gain beta
Iin=12D-3;//input peak current in amperes

//Solution

IBQ=(VCC-VBE)/RB;//base quiscent current in amperes
ICQ=B*IBQ;//collector quiscent current in amperes
VCEQ=VCC-ICQ*RL;//quiscent collector to emitter voltage in volts
Ic_p=B*Iin;//peak collector current swing in amperes
Pout_ac=Ic_p^2*RL/2;//output a.c. power in watts
Pin_dc=VCC*ICQ;//input d.c. power in watts
e=Pout_ac/Pin_dc;//efficiency of amplifier
printf("(a) Input power = %.2f Watts\n ",Pin_dc);
printf("(b) Output power = %.1f Watts\n ",Pout_ac);
printf("(c) Efficiency of the amplifier η = %.2f %%\n ",e*100);
