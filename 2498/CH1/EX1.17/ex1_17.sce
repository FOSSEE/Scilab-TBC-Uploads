// Exa 1.17
clc;
clear;
close;
format('e',9)
// Given data
l = 1000;// in ft
l = l * 12*2.54;// in cm
R = 6.51;// in ohm
rho = R/l;// in ohm/cm
// The conductivity 
sigma = 1/rho;// in mho/cm
sigma = sigma * 10^2;// in mho/m
D= 1.03*10^-3;// in m
A= %pi*D^2/4;// in m^2
disp(sigma,"The conductivity in mho/m is");
q = 1.6*10^-19;// in C
n = 8.4*10^28;// in electrons/m^3
// sigma = n*q*miu;
miu = sigma/(n*q);// in m^2/V-s
disp(miu,"The mobility in m^2/V-s is");
T = 2;
// The drift velocity 
V = T/(n*q*A);// in m/s
disp(V,"The drift velocity in m/s is");
