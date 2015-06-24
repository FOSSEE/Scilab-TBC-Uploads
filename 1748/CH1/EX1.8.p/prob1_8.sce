// Prob 1.8
clc;
clear;
close;
format('v',5);
// Given data
ph=3;//no. of phase
P=10;//in KVA
VL=230;//in volt
Xs=1.2;//in ohms/phase
Ra=0.5;//in ohm/phase
VP=VL/sqrt(3);//in volt
I=P*10^3/(3*VP);//in Ampere
cosfi=0.8;//Power factor
sinfi=sind(acosd(cosfi));//
//Power factor 0.8 lagging
Eo=sqrt((VP*cosfi+I*Ra)^2+(VP*sinfi+I*Xs)^2);//in volt
Regulation=(Eo-VP)/VP*100;//in %
disp(Regulation,"% regulation when power factor lagging : ");
//Power factor 0.8 leading
Eo=sqrt((VP*cosfi+I*Ra)^2+(VP*sinfi-I*Xs)^2);//in volt
Regulation=(Eo-VP)/VP*100;//in %
disp(Regulation,"% regulation when power factor leading : ");
