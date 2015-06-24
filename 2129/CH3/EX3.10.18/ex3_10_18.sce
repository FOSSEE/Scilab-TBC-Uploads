// Exa 3.10.18
clc;
clear;
close;
// Given data
W = 2 * 10^-4;// in cm
W = W * 10^-2;// in m
A = 1;// in mm^2
A = A * 10^-6;// in m^2
epsilon_r = 16;
epsilon_o = 8.854 * 10^-12;// in F/m
epsilon = epsilon_r * epsilon_o;
C_T = (epsilon * A)/W;// in F
disp(C_T*10^12,"The barrier capacitance in pF is");

