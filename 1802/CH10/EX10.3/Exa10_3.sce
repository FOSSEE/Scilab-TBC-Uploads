//Exa 10.3
clc;
clear;
close;
//Given Data :
format('v',6);
Im=50;//in Ampere
f=50;//in Hz
V=400;//in volts
cosfi_1=0.6;//powerfactor
tanfi_1=tand(acosd(cosfi_1));//unitless
Ia=Im*cosfi_1;//in Ampere
Ir1=Ia*tanfi_1;//in Ampere
//Let the capaitor of C farads be connected to improve pf i.e., 0.9(lag) 
cosfi_2=0.9;//powerfactor
tanfi_2=tand(acosd(cosfi_2));//unitless
Ir2=Ia*tanfi_2;//in Ampere
Ic=Ir1-Ir2;//in Ampere
C=Ic/(2*%pi*f*V);//in farads
disp(C*10^6,"Capacity of condenser(in uF) :");