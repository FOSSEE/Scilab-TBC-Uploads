//Exa 1.21.6
clc;
clear;
close;
// Given data
e = 1.6 * 10^-19;// in C
n_i = 2 * 10^19;// in /m^3
Mu_e = 0.36;// in m^2/v.s
Mu_h = 0.17;// in m^2/v.s
A = 1 * 10^-4;// in  m^2
V = 2;//in volts
l = 0.3;// in mm
l = l * 10^-3;// in m
E=V/l;// in volt/m
Sigma = n_i * e * (Mu_e + Mu_h);// in mho/m
// J = I/A = Sigma * E
I= Sigma*E*A;
disp(I,"The current produced in a small germanium plate in amp is");

 
