//Tested on Windows 7 Ultimate 32-bit
//Chapter 9 Frequency Response of Amplifier Pg no. 313 and 314
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
Cwi=5D-12;//wiring capacitance in farads
f=[1.19D6 2.38D6 4.76D6];//frequency values in hertz

//Solution

VB=VCC*R2/(R1+R2);//base to ground voltage in volts
VE=VB-VBE;//emitter to ground voltage in volts
IE=VE/RE;//emitter current in amperes
re=VT/IE;//a.c. emitter resistance in ohms
RTH=1/(1/Rs+1/R1+1/R2+1/B/re);//thevenised input resistance in ohms
Gv_mid=RC*RL/(RC+RL)/re;//midrange gain of amplifier
Cin_miller=Cbc*(1+Gv_mid);//input miller capacitance in farads
C=Cwi+Cbe+Cin_miller;//total input capacitance in farads

for i=1:3
    phi=atand(2*%pi*RTH*f(i)*C);
    printf("At f=%.2f MHz ɸ = %.2f°\n\n ",f(i)/10^6,phi);
end
