// Exa 2.13
clc;
clear;
close;
// Given data
Rho = 0.3623*10^-3;// in ohm m
d = 4.42*10^28;// Ge density in atoms/m^3
Sigma = 1/Rho;// in mho/m
n_d = d*10^-6;// in atoms/m^3
e = 1.6*10^-19;// in C
Miu = Sigma/(n_d*e);// in m^2/V.sec
disp(Miu,"The electron mobility in m^2/V-sec is");

