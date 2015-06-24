//Ex 1.13
clc;clear;close;
format('v',5);
Iout=1;//mA
VBE=0.7;//V
VCC=30;//V
Beta=100;//unitless
IREF=Iout*(1+2/Beta);//mA
disp(IREF,"Reference current is(mA) : ");
R=(VCC-VBE)/(IREF);//kohm
disp(R,"Resistance is(kohm) : ");
