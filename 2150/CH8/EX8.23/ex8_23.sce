// Exa 8.23
clc;
clear;
close;
// Given data
R_f = 1.8;// in kohm
R_f = R_f * 10^3;// in ohm
R1 = 180;// in ohm
A_v = (R_f/R1);
disp(A_v,"Closed loop gain is");
F = 1;// in MHz
F = F * 10^6;// in Hz
f2 = F/A_v;// in Hz
disp(f2,"Closed loop bandwidth in Hz is");
V_in = 25;// in mV
V_in = V_in * 10^-3;// in V
V_o = A_v*V_in;// in V
disp(V_o,"The output voltage in V is");
