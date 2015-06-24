//Ex 5.4
clc;
clear;
close;
format('v',5);
V1=-2;V2=3;//V
R1=12;R2=12;R3=10//kohm
Rf=12;Ri=12;//kohm
Rt=2;//kohm
Vyx=200*10^-6;//V
Vout=Rf/Ri*(1+2*R3/Rt)*Vyx;//V
disp(Vout*1000,"Output Voltage(mV)");
