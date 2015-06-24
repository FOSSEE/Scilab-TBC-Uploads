// Exa 2.8
clc;
clear;
close;
// Given data
V = 220;// in V
f=50;// in Hz
N2byN1=1/4;
R_L = 1;// in kohm
R_L= R_L*10^3;// in ohm
V_o = 220;// in V
V_s = N2byN1*V_o;// in V
V_m = sqrt(2) * V_s;// in V
V_Ldc = (2*V_m)/%pi;// in V
disp(V_Ldc,"Average load output voltage in V is");
P_dc = (V_Ldc)^2/R_L;// in W
disp(P_dc,"DC power delivered to load in watt is");
PIV = V_m;// in V
disp(PIV,"Peak inverse Voltage in V is");
f_o = 2*f;// in Hz
disp(f_o,"Output frequency in Hz is");
