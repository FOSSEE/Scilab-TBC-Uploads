//Exa 1.1
clc;
clear;
close;
//Given data : 
format('v',6);
R=4;//in ohm
XL=3;//in ohm
VL=400;//in volt
Vph=VL/sqrt(3);//in volt
Zph=sqrt(R^2+XL^2);//in ohm
Iph=Vph/Zph;//in Ampere
//In star connected IL=Iph
IL=Iph;//in Ampere
disp(IL,"Line Current (in A) :");
cosfi=R/Zph;//unitless
PowerConsumed=sqrt(3)*VL*IL*cosfi;//in watts
disp(PowerConsumed,"Total power consumed by the load (in Watts)");