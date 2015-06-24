//Exa 3.10.8
clc;
clear;
close;
//Given data
A = 1;// in mm^2
A = A * 10^-6;// in m^2
N_A = 3 * 10^20;// in atoms/m^3
q = 1.6 *10^-19;// in C
V_o = 0.2;// in V
epsilon_r=16;
epsilon_o= 8.854*10^-12;// in F/m
epsilon=epsilon_r*epsilon_o;
// Part (a)
V=-10;// in V
// V_o - V = 1/2*((q * N_A )/epsilon) * W^2
W = sqrt(((V_o - V) * 2 * epsilon)/(q * N_A));// m
C_T1 = (epsilon * A)/W;// in F
disp(W*10^6,"The width of the depletion layer  for an applied reverse voltage of 10V in µm is ");
// Part (b)
V=-0.1;// in V
W = sqrt(((V_o - V) * 2 * epsilon)/(q * N_A));// m
C_T2 = (epsilon * A)/W;// in F
disp(W*10^6,"The width of the depletion layer  for an applied reverse voltage of 0.1V in µm is ");
// Part (c)
V=0.1;// in V
W = sqrt(((V_o - V) * 2 * epsilon)/(q * N_A));// m
disp(W*10^6,"The width of the depletion layer  for an applied for a forward bias of 0.1V in µm is ");
// Part (d)
disp(C_T1*10^12,"The space charge capacitance for an applied reverse voltage of 10V  in pF is");
disp(C_T2*10^12,"The space charge capacitance for an applied reverse voltage of 0.1V  in pF is");


