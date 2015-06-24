//Tested on Windows 7 Ultimate 32-bit
//Chapter 9 Frequency Response of Amplifier Pg no. 322
clear;
clc;

//Given
//Figure 9.35

Ciss=6D-12;//FET input capacitance in farads
Crss=2.5D-12;//FET reverse transfer capacitance in farads
gm=7500D-6;//transconductance in Siemens
VDD=12;//drain supply voltage in volts
Rs=50;//source resistance in ohms
RG=15D6;//gate resistance in ohms
RD=1.2D3;//drain resistance in ohms
RS=1D3;//source resistance in ohms
RL=15D6;//load resistance in ohms
Cwo=1D-12;//output wiring capacitance in farads

//Solution

Cgd=Crss;//gate to drain capacitance in farads
Cgs=Ciss-Crss;//gate to source capacitance in farads
RL_dash=RD*RL/(RD+RL);//total load resistance in ohms
GV=gm*RL_dash;//total voltage gain
Cout_miller=Cgd*(1+GV)/GV;//output miller capacitance in farads
Cout_dash=Cwo+Cout_miller;//total output capacitance in farads
fc=1/(2*%pi*RL_dash*Cout_dash);//cutoff frequency in hertz
printf("Critical frequency fc = %.2f MHz\n ",fc/10^6);
