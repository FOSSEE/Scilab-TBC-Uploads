// Exa 6.13
clc;
clear;
close;
// Given data
P=10000;// in ohm
Q=10;// in ohm
S=5;// in kohm
S=S*10^3;// in ohm
E=12;// in volt
R=P*S/Q;// in ohm
disp(R*10^-6,"The maximum value of resistance that can be measurement with the given argument in Mohm")
R_Th= R*S/(R+S)+ P*Q/(P+Q);// in ohm

// Part (ii)
theta= 2.5;// in mm
Rg=100;// in ohm
Si=100;// in mm/miuA
Si=Si*10^6;// in mm/amp
del_R= theta*(R_Th+Rg)*(R+S)^2/(Si*E*S);// in ohm
disp(del_R*10^-3,"Change in resistance  in kohm")
