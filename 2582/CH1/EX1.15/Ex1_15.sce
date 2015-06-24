//Ex 1.15
clc;clear;close;
format('v',5);
Iout=8;//micro A
VBE=0.7;//V
VCC=20;//V
Beta=100;//unitless
IREF=Iout*(1+2/Beta/(Beta+1));//micro A
disp(IREF,"Reference current is(micro A) : ");
R=(VCC-2*VBE)/(IREF);//Mohm
disp(R,"Resistance is(Mohm) : ");
