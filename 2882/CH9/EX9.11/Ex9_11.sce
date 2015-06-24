//Tested on Windows 7 Ultimate 32-bit
//Chapter 9 Frequency Response of Amplifier Pg no. 314 and 315
clear;
clc;

//Given

VCC=12;//collector supply voltage in volts
RC=2.7D3;//collector resistance in ohms
RE=560;//emitter resistance in ohms
R1=15D3;//divider network resistance R1 in ohms
R2=5.6D3;//divider network resistance R2 in ohms
VBE=0.7;//forward voltage drop of emitter diode in volts
VT=25D-3;//voltage equivalent of temperature in volts
B=100;//DC CE current gain bet
Rs=600;//source internal impedance in ohms
RL=2.7D3;//load resistance in ohms
Cbe=15D-12;//base to emitter capacitance in farads
Cbc=2D-12;//base to collector capacitance in farads
Cwo=1D-12;//output wiring capacitance in farads
f=[1.19D6 2.38D6 4.76D6];//frequency values in hertz

//Solution

VB=VCC*R2/(R1+R2);//base to ground voltage in volts
VE=VB-VBE;//emitter to ground voltage in volts
IE=VE/RE;//emitter current in amperes
re=VT/IE;//a.c. emitter resistance in ohms
RTH=1/(1/Rs+1/R1+1/R2+1/B/re);//thevenised input resistance in ohms
Gv_mid=RC*RL/(RC+RL)/re;//midrange gain of amplifier
Cout_miller=Cbc*(1+Gv_mid)/Gv_mid;//output miller capacitance in farads
Cout_dash=Cout_miller+Cwo;//total output capacitance in farads
RL_dash=RL*RC/(RL+RC);//total output resistance in ohms
printf("The high frequency input R-C network consists of\n ");
printf("R = %.2f kilo-ohms\n ",RL_dash/10^3);
printf("C = %.f pF\n\n ",Cout_dash*10^12);

fc=1/2/%pi/RL_dash/Cout_dash;//critical frequency in hertz
printf("fc = %.1f MHz",fc/10^6);

