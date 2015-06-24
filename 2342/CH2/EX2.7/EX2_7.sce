// Exa 2.7
clc;
clear;
close;
format('v',9)
// Given data
l = 0.1;// in m
A = 1.7;// in mm^2
A = A * 10^-6;// in m^2
R = 0.1;// in ohm
At = 63.5;// atomic weight
N_A = 6.02*10^23;
d = 8.96;// in gm/cc
n = (N_A/At)*d;// in /cc
n = n * 10^6;// in /m^3
e = 1.6*10^-19;//electron charge in C
// Resistivity of copper
//Formula R = Rho*(l/A);
Rho = (R*A)/l;// in ohm m
// Conductivity of copper
Sigma = 1/Rho;// in mho/m
// Formula Sigma = n*e*Miu_e
Miu_e = Sigma/(n*e);// in m^2/V.sec
disp(Miu_e,"The mobility in m^2/V-sec is");
