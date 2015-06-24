// Exa 1.22
clc;
clear;
close;
format('e',8)
// Given data
R = 2;// in k ohm
R = R * 10^3;// in ohm
L = 200;// in µm
L = L * 10^-4;// in cm
A = 10^-6;// in cm^2
miu_n = 8000;// in cm^2/V-s
q = 1.6*10^-19;// in C
n = '0.9*N_D';
// R = (rho*l)/A= (1/(n*q*miu_n))*(l/A);
// rho = L/(R*q*miu_n*A);
n = L/(R*q*miu_n*A);// in /cm^-3
// The doping needed 
Nd= n/0.9
disp(Nd,"The doping needed in cm^-3 is");
