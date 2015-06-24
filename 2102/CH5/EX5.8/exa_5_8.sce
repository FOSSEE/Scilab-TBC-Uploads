// Exa 5.8
clc;
clear;
close;
// Given data
N_A= 4*10^20;// per m^3
Vi= 0.2;// in V
q= 1.6*10^-19;
V= -1;// in V
A= 0.8*10^-6;/// in m^2
epsilon_r= 16;
epsilon_o= 8.854*10^-12;// in F
epsilon= epsilon_o*epsilon_r;
d= [2*epsilon*(Vi-V)/(q*N_A)]^(1/2);
C_T= epsilon*A/d;// in F
disp(C_T*10^12,"The transition capacitance in pF is :")
