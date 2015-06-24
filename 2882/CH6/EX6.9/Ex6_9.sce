//Tested on Windows 7 Ultimate 32-bit
//Chapter 6 Single Staje BJT Amplifiers Pg no. 200
clear;
clc;

//Given Data
//Figure 6.25

VCC=15;//collector supply voltage in volts
RE=1.5D3;//emitter resistance in ohms
R1=12D3;//divider network resistance R1 in ohms
R2=10D3;//divider network resistance R2 in ohms
VBE=0.7;//forward voltage drop of emitter diode in volts
Bac=150;//AC CE current gain beta
VT=25D-3;//voltage equivalent of temperature in volts
Vs=1;//input rms a.c. voltage in volts
Rs=600;//source internal impedance in ohms
RL=12D3;//load resistance in ohms

//Solution

Req=RE*RL/(RE+RL);//equivalent output resistance in ohms
Rin_dash=Bac*Req;//base input resistance
Rin=1/(1/R1+1/R2+1/Rin_dash);//total input resistance in ohms
VB=VCC*R2/(R1+R2);//d.c. base to ground voltage in volts
VE=VB-VBE;//d.c. emitter to ground voltage in volts
IE=VE/RE;//d.c. emitter current in amperes
re=VT/IE;//equivalent BJT model emitter resistance in ohms
Gv=Req/(Req+re);//voltage gain of CC configuration
Ie=Gv*Vs/Req;//a.c. emitter current in amperes
Iin=Vs/Rin;//a.c. input current in amperes
Gi=Ie/Iin;//a.c. current gain
Gp=Gi*Gv;//a.c. power gain
printf("Voltage gain Gv = %.3f\n Current gain Gi = %.2f\n Power gain Gp = %.2f\n Total input resistance Rin = %.2f kilo-ohms",Gv,Gi,Gp,Rin/1000);

//decimal errors in textbook due to approximations
