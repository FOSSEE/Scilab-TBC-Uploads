// Exa 2.26
clc;
clear;
close;
format('v',6)
// Given data
R_L = 2;// in k ohm
R_L = R_L * 10^3;// in ohm
R = 2;// in k ohm
R = R * 10^3;// in ohm
Vin = 5;// in V
// The peak output voltage 
Vout = (R_L/(R+R_L))*Vin;// in V
disp(Vout,"The peak output voltage in V is");
