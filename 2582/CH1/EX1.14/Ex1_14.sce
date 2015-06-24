//Ex 1.14
clc;clear;close;
format('v',5);
Iout=0.5;//mA
VBE=0.7;//V
VCC=5;//V
Beta=50;//unitless
IREF=Iout*(1+2/Beta);//mA
disp(IREF,"Reference current is(mA) : ");
R=(VCC-VBE)/(IREF);//kohm
disp(R,"Resistance is(kohm) : ");
