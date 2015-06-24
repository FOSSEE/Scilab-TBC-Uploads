// Exa 4.19
format('v',6)
clc;
clear;
close;
// Given data
q = 1.6 * 10^-19;// in C
N_A = 3 * 10^20;// in /m^3
A = 1;// in µm^2
A = A * 10^-6;// in m^2
V = -10;// in V
V_J = 0.25;// in V
V_B = V_J - V;// in V
epsilon_o = 8.854;// in pF/m
epsilon_o = epsilon_o * 10^-12;// in F/m
epsilon_r = 16;
epsilon = epsilon_o * epsilon_r;
// The width of depletion layer,
W = sqrt((V_B * 2 * epsilon)/(q * N_A));// in m 
W=W*10^6;// in µm
disp(W,"The width of depletion layer in µm is");
W=W*10^-6;// in m
// The space charge capacitance,
C_T = (epsilon * A)/W;// in pF
C_T=C_T*10^12;// in pF
disp(C_T,"The space charge capacitance in pF is");
