//Exa 3.7
clc;
clear;
close;
//Given Data :
format('v',5);
L=220;//in meter
W=0.604;//in Kg/m
T_strength=5758;//in Kg
SafetyFactor=2;//unitless
T=T_strength/SafetyFactor;//in Kg
S=W*L^2/(8*T);//in meter
disp(S,"Sag(in meter) : ");