//Exa 10.5
clc;
clear;
close;
//Given Data :
format('v',6);
Im=30;//in Ampere
f=50;//in Hz
V=200;//in volts
cosfi_1=0.8;//powerfactor
Ia=Im*cosfi_1;//in Ampere
cosfi_2=1;//powerfactor
Ir2=0;//in A(as cosfi_2=1)
tanfi_1=tand(acosd(cosfi_1));//unitless
Ir1=Ia*tanfi_1;//in Ampere
Ic=Ir1-Ir2;//in Ampere
C=Ic/(2*%pi*f*V);//in farads
disp(C*10^6,"Capacity of condenser(in uF) :");