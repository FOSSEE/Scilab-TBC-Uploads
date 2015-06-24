//Exa 3.8
clc;
clear;
close;
//Given data : 
RC=10;//in kohm
Rin=1;//in kohm
Beta=100;//unitless
RL=100;//in ohm
RCdash=RC*10^3*RL/(RC*10^3+RL);//in ohm
VoltageGain=Beta*RCdash/(Rin*10^3);//in volt
disp(VoltageGain,"Voltage Gain : ");
