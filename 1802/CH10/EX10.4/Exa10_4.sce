//Exa 10.4
clc;
clear;
close;
//Given Data :
format('v',7);
Im=10;//in Ampere
f=50;//in Hz
V=240;//in volts
cosfi_1=0.707;//powerfactor
sinfi_1=sind(acosd(cosfi_1));//unitless
Ir1=Im*sinfi_1;//in Ampere
cosfi_2=1;//powerfactor
Ir2=0;//in A(as cosfi_2=1)
Ic=Ir1-Ir2;//in Ampere
C=Ic/(2*%pi*f*V);//in farads
disp(C*10^6,"Capacity of condenser(in uF) :");