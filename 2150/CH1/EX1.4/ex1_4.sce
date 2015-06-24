// Exa 1.4
clc;
clear;
close;
// Given data
v1 = 10;// in V
v2 = 0.7;// in V
V_L = v1-v2;// in V
disp(V_L,"The load voltage in V is");
R_L = 1*10^3;// in Ω
I_L = V_L/R_L;// in A
disp(I_L*10^3,"The load current in mA is");
P_D = v2*I_L;// in watt
disp(P_D*10^3,"The diode Power in mW is");
