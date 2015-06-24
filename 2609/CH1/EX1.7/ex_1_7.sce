//Ex 1.7
clc;
clear;
close;
format('v',5);
Iout=6;//micro A
IREF=1.2;//mA
VBE2=0.7;//V
VT=26;//mV
Beta=120;//unitless
VCC=20;//V
R=(VCC-VBE2)/IREF;//kohm
disp(R,"Value of resistance R(kohm)")
IC1=Iout;//micro A
IC2=(IREF-IC1*10^-3/Beta)/(1+1/Beta);//mA
RS=1/(IC1*10^-6)*VT*10^-3*log(IC2*1000/IC1);//ohm
disp(RS/1000,"Value of resistance RS(kohm)");
