//Ex 1.3
clc;
clear;
close;
format('v',5);
Iout=0.5;//mA
Beta=50;//unitless
VEB=0.7;//V
VCC=5;//V
IREF=Iout*(1+2/Beta);//mA
R=(VCC-VEB)/IREF;//kohm
disp(IREF,"Reference current(mA)");
disp(R,"Resistance required(kohm)");;
