//Ex 1.2
clc;
clear;
close;
format('v',5);
Iout=1;//mA
VBE=0.7;//V
Beta=100;//unitless
VCC=30;//V
IREF=Iout*(1+2/Beta);//mA
R=(VCC-VBE)/IREF;//kohm
disp(IREF,"Reference current(mA)");
disp(R,"Resistance required(kohm)");;
