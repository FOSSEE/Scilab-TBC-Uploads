// Exa 1.28
clc;
clear;
close;
format('v',6)
// Given data
T = 125;// in degree C
T = T + 273;// in K
V_T = T/11600;
Io = 30;// in µA
Io = Io * 10^-6;// in A
V = 0.2;// in V
// The dynamic resistance in forward direction,
r_f = V_T/( Io * (%e^(V/V_T)) );// in ohm
disp(r_f,"The dynamic resistance in forward direction in ohm is");
r_f = V_T/( Io * (%e^(-V/V_T)) );// in ohm
// The dynamic resistance in reverse direction 
r_f = r_f * 10^-6;// in Mohm
disp(r_f,"The dynamic resistance in reverse direction in Mohm is");
