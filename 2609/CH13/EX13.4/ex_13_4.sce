////Ex 13.4
clc;
clear;
close;
format('v',6);
R=20;//kohm
R1=20;//kohm
R2=10;//kohm
VZ=4.7;//V
Vref=VZ;//V
Vout=Vref*(1+R1/R2);//V
disp(Vout,"Output Voltage(V)");
