// Exa 2.11
clc;
clear;
close;
// Given data
Miu_d = 500;// in cm^2/V.S
Rho = 10;// in ohm cm 
e = 1.6*10^-19;// in C
n_d = 1/(Rho*e*Miu_d);// in /cm^3... correction
disp(n_d,"The number of donor atom per cm^3 is");

