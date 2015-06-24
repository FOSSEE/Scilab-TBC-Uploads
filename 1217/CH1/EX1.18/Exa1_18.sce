//Exa 1.18
clc;
clear;
close;
//given data
Iload=20;//in uA
VBE=0.7;//in volts
VCC=10;//in Volts
IR=Iload;//in mA
R=(VCC-2*VBE)/(IR*10^-3);//in kohm
disp(R,"R in kohm is :")