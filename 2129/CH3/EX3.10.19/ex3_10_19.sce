// Exa 3.10.19
clc;
clear;
close;
// Given data
C_T = 100;// in pF
C_T=C_T*10^-12;// in F
epsilon_r = 12;
epsilon_o = 8.854 * 10^-12;// in F/m
epsilon = epsilon_r * epsilon_o;
Rho_p = 5;// in ohm-cm
Rho_p = Rho_p * 10^-2;// in ohm-m
V_j = 0.5;// in V
V = -4.5;// in V
Mu_p = 500;// in cm^2
Mu_p = Mu_p * 10^-4;// in m^2
Sigma_p = 1/Rho_p;// in per ohm-m
qN_A = Sigma_p/ Mu_p;
V_B = V_j - V;
W = sqrt((V_B * 2 * epsilon)/qN_A);// in m
//C_T = (epsilon * A)/W;
A = (C_T * W)/ epsilon;// in m
D = sqrt(A * (4/%pi));// in m
D = D * 10^3;// in mm
disp(D,"The diameter in mm is");
 
