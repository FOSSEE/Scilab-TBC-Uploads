//Ex 5.3
clc;
clear;
close;
format('v',5);
V1=-2;V2=3;//V
R1=50;R2=100;//kohm
Rf=250;//kohm
//I1+I2=If with IB=0 & Vx=0
Vout=-(V1/R1+V2/R2)*Rf;//V
disp(Vout,"Output Voltage(V)");
