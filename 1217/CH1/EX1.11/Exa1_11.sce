//Exa 1.11
clc;
clear;
close;
//given data
Iload=0.5;//in mA
BETA=150;//unitless
VEB=0.7;//in Volts
VCC=10;//in Volts
IR=Iload*(1+2/BETA);//in mA
R=(VCC-VEB)/IR;//in kohm
disp(IR,"Value of IR in mA is : ");
disp(R,"Value of R in kohm is : ");