// Exa 6.24
clc;
clear;
close;
// Given data
V_GS = 15;// in V
I_G = 1;// in nA
I_G =I_G * 10^-9;// in A
R_in = V_GS/I_G;// in Ω
disp(R_in*10^-9,"Input resistance in GΩ is"); 
