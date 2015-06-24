//Ex 1.4
clc;
clear;
close;
format('v',5);
Iout=8;//micro A
Beta=100;//unitless
VBE=0.7;//V
VCC=20;//V
IREF=Iout/(1+2/Beta/(1+Beta));//micro A
R=(VCC-2*VBE)/IREF;//Mohm
disp(IREF,"Reference current(micro A)");
disp(R,"Resistance required(Mohm)");;
