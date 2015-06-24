////Ex 13.5
clc;
clear;
close;
format('v',6);
Vout=15;//V
Vin=20;//V
INL=2;//mA(INL=Iadj+Iref)
Iadj=60;//mA(Assumed)
Iref=INL-Iadj/1000;//mA
Vref=1.25;//V
R1=Vref/Iref*1000;//ohm
VR2=Vout-Vref;//V
R2=VR2/INL*1000;//ohm
disp("Design values are : ");
disp(R1,"Resistance, R1(ohm)");
disp(R2/1000,"Resistance, R2(kohm)");
