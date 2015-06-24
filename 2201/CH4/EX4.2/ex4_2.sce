// Exa 4.2
clc;
clear;
close;
// Given data
N_D = 10^17 * 10^6;// in atoms/m^3
N_A = 0.5*10^16*10^6;// in atoms/m^3
Epsilon_r = 10;
Epsilon_o = 8.85*10^-12;
Epsilon = Epsilon_r*Epsilon_o;// in F/m
e = 1.602*10^-19;// in C
V = 0;
V_B = 0.7;// in V
W = sqrt( ((2*Epsilon*V_B)/e)*(1/N_A+1/N_D) );// in m
disp(W,"The junction width in meter when no external voltage is applied is");
V_o = V_B;// in V
V1 = -10;// in V
V_B1 = V_o-V1;// in V
W = sqrt( ((2*Epsilon*V_B1)/e)*(1/N_A+1/N_D) );// in m
disp(W,"Junction width in meter with an external voltage of -10V is");
