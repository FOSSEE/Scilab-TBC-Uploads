//Ex 1.1
clc;
clear;
close;
format('v',5);
Iout=8;//micro A
VBE=0.7;//V
Beta=80;//unitless
VCC=20;//V
IREF=Iout*(1+2/Beta);//micro A
R=(VCC-VBE)/IREF;//Mohm
disp(IREF,"Reference current(micro A)");
disp(R,"Resistance required(Mohm)");;
