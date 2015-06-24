//Exa 2.19
clc;
clear;
close;
//Given data : 
VCC=20;//in volt
VBE=0.7;//in volt(For Si)
Beta=50;//unitless
RE=200;//in ohm
R1=60;//in kohm
R2=30;//in kohm
V2=VCC*R2/(R1+R2);//in volt
VEO=V2-VBE;//in volt
disp(VEO,"Voltage across RE in volt : ");