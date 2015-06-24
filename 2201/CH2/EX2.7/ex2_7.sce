// Exa 2.7
clc;
clear;
close;
// Given data
d = 8.96;// in gm/cc
At = 63.5;// atomic weight
N_A = 6.02*10^23;// in /gm mole
l = 0.1;// in m
e = 1.6*10^-19;// in C
A = 1.7*10^-6;// in m^2
R = 0.1;// in ohm
n = (N_A/At)*d;// in /cc
n = n * 10^6;// in /m^3
Rho = (R*A)/l;// in ohm.m
Sigma = 1/Rho;// in mho/m
Miu_e = Sigma/(n*e);// in m^2/V-sec
disp(Miu_e,"The electron mobility in m^2/V-sec is ");
