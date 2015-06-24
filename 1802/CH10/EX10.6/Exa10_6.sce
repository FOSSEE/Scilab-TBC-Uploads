//Exa 10.6
clc;
clear;
close;
//Given Data :
format('v',7);
Im=30;//in Ampere
f=50;//in Hz
V=200;//in volts
cosfi_1=0.7;//powerfactor
Ia=Im*cosfi_1;//in Ampere
tanfi_1=tand(acosd(cosfi_1));//unitless
Ir1=Ia*tanfi_1;//in Ampere
cosfi_2=0.85;//powerfactor
tanfi_2=tand(acosd(cosfi_2));//unitless
Ir2=Ia*tanfi_2;//in Ampere
Ic=Ir1-Ir2;//in Ampere
C=Ic/(2*%pi*f*V);//in farads
disp(C*10^6,"Capacity of condenser(in uF) :");