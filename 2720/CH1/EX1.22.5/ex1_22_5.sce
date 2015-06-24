// Exa 1.22.5
clc;
clear;
close;
// Given data
Rho = 5.96;// in gm/cc
M = 50;
n = 2;
N_A = 6.023*10^23;
//Formula Rho = (n*M)/(N_A*((a)^3));
a = ( (n*M)/(N_A*Rho) )^(1/3);// in cm
r = (a*sqrt(3))/4;// in cm
P_F = (2*(4/3)*%pi*((r)^3))/((a)^3);// Packing factor
disp(P_F,"The Packing factor is");
