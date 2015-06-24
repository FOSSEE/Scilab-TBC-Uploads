// Exa 1.22.4
clc;
clear;
close;
// Given data
M =60;// in gm/mole
Rho = 6.23;// in gm/cc
n = 4;
N_A = 6.023*10^23;
// Rho = (n*M)/(N_A*((a)^3));
a = ( (n*M)/(N_A*Rho) )^(1/3);// in cm
r = (a*sqrt(2))/4;// in cm
r = r * 10^8;// in Å
disp(r,"The radius in Å is"); 
