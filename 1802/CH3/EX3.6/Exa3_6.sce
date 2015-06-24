//Exa 3.6
clc;
clear;
close;
//Given Data :
format('v',5);
L=60;//in meter
S=25*10^-2;//in meter
A=61.36;//in mm^2(cross sectional area)
W=0.5445;//in Kg/m
UTS=42.20;//in Kg/mm^2
T=W*L^2/(8*S);//in Kg
B_strength=UTS*A;//in Kg
SafetyFactor=B_strength/T;//unitless
disp(SafetyFactor,"Factor of safety : ");