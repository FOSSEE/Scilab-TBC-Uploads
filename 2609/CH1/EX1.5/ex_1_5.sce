//Ex 1.5
clc;
clear;
close;
format('v',7);
Iout=60;//micro A
VBE=0.7;//V
Beta=150;//unitless
VCC=30;//V
IREF=Iout*(1+2/Beta/(1+Beta));//micro A
R=(VCC-2*VBE)/IREF;//Mohm
disp(IREF,"Reference current(micro A)");
disp(R*1000,"Resistance required(kohm)");;
