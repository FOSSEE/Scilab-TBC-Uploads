////Ex 4.8
clc;
clear;
close;
format('v',5);
Iin=1;//mA
Rf=1;//kohm
IB=0;//for ideal opamp
If=Iin-IB;//mA
Vout=-If*Rf;//V
disp(Vout,"Output Voltage(V)");
