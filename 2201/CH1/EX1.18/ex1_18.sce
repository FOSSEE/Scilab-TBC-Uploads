// Exa 1.18
clc;
clear;
close;
// Given data
Rho = 5.96;// in gm/cc
M = 50;
n = 2;
N_A = 6.023*10^23;
a =((n*M)/(Rho*N_A))^(1/3);// in cm
r = (a*sqrt(3))/4;// in cm
P_f = (2*(4/3)*%pi*((r)^3))/((a)^3);// packing factor
disp(P_f,"Packing factor is ");
