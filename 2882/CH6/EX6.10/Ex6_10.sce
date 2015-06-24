//Tested on Windows 7 Ultimate 32-bit
//Chapter 6 Single Staje BJT Amplifiers Pg no. 202 and 203
clear;
clc;

//Given Data
//Figure 6.28

VCC=12;//collector supply voltage in volts
RC=1.5D3;//collector resistance in ohms
RE=1.5D3;//emitter resistance in ohms
R1=82D3;//divider network resistance R1 in ohms
R2=18D3;//divider network resistance R2 in ohms
VBE=0.7;//forward voltage drop of emitter diode in volts
VT=25D-3;//voltage equivalent of temperature in volts
RL=15D3;//load resistance in ohms

//Solution

VB=VCC*R2/(R1+R2);//d.c. base to ground voltage in volts
VE=VB-VBE;//d.c. emitter to ground voltage in volts
IE=VE/RE;//d.c. emitter current in amperes
re=VT/IE;//equivalent BJT model emitter resistance in ohms
Rin=re;//total input resistance in ohms
RL_dash=RC*RL/(RC+RL);//equivalent output resistance in ohms
Gv=RL_dash/re;//voltage gain of CC configuration
Gi=1;//current gain for a CB amplifier is almost equal to unity
Gp=Gi*Gv;//a.c. power gain
printf("Voltage gain Gv = %.1f\n Current gain Gi = %d\n Power gain Gp = %.1f\n Total input resistance Rin = %.2f ohms",Gv,Gi,Gp,Rin);
