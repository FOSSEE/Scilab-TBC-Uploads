//Exa 1.3
clc;
clear;
close;
//Given Data :
format('v',6);
R=16;//in ohm
L=38.2;//in mH
L=38.2*10^-3;//in H
VL=400;//in volt
f=50;//in Hz
XL=2*%pi*f*L;//in ohm
Zph=sqrt(R^2+XL^2);//in ohm
//In star connected :
Vph=VL/sqrt(3);//in volt
Iph=Vph/Zph;//in Ampere
IL=Iph;//in Ampere
disp(IL,"Line Current (in A) :");
cosfi=R/Zph;//unitless
disp(cosfi,"Power factor : ");
P=sqrt(3)*VL*IL*cosfi;//in watts
disp(P/10^3,"Total power consumed by the load (in kW)");