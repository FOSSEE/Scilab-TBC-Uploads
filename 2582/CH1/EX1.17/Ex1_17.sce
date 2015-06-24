//Ex 1.17
clc;clear;close;
format('v',5);
Iout=6;//micro A
IREF=1.2;//mA
VBE2=0.7;//V
VT=26;//mV
VCC=20;//V
Beta=120;//unitless
R=(VCC-VBE2)/IREF;//kohm
IC2=(IREF-Iout/Beta)/(1+1/Beta);//mA
RS=VT/Iout*log(IC2*1000/Iout);//kohm
disp(RS,R,"Value of resistance R & Rs for widlar current source design is(kohm) : ");
