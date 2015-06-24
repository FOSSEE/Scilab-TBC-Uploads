// Exa 1.1
clc;
clear;
close;
format('v',9);
// Given data
E_G = 0.72;// in eV
E_F = (1/2)*E_G;// in eV
k = 8.61*10^-5;// in eV/K
T = 300;// in K 
// The fraction of the total number of electrons 
n_C_by_n = 1/( 1 + (%e^((E_G-E_F)/(k*T))) );
disp(n_C_by_n,"The fraction of the total number of electrons is");
