// Exa 1.8
clc;
clear;
close;
format('v',8)
// Given data
rho = 0.5;// in ohm-m
J = 100;// in A/m^2
miu_e = 0.4;// in m^2/V-s
e = 1.6*10^-19;// in C
sigma = 1/rho;
E = J/sigma;
v = miu_e*E;// in m/s
disp(v,"The drift velocity in m/s is");
D = 10;// distance of travel in µm
D = D * 10^-6;// in m
// Time taken by electron
t= D/v;// time taken in second 
disp(t,"The time taken in second is");
