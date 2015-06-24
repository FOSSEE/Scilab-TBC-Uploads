//Exa 1.9
clc;
clear;
close;
//given data
Io=180;//in uA
Vcc=20;//in Volts
VBE=0.7;//in Volts
BETA=120;//unitless
IR=Io*(1+2/BETA);//in uA
R=(Vcc-VBE)/(IR*10^-3);//in kohm
disp(IR,"Value of IR in uA is : ");
disp(R,"Value of R in kohm is : ");