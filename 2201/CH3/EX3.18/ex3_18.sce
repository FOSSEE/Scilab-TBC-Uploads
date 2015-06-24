// Exa 3.18
clc;
clear;
close;
// Given data
q = 1.6*10^-19;// in C
n_n = 5*10^20;// in  /m^3
n_n = n_n * 10^-6;// in /cm^3
Miu_n = 0.13;// in m^2/V-sec
Miu_n = Miu_n * 10^4;// in cm^2/V-sec
Sigma_n = q*n_n*Miu_n;// in ohm-cm^-1
Rho = 1/Sigma_n;
A = 100;// in µm^2
A = A * 10^-8;// in cm^2
l = 0.1;// in cm
R = Rho * (l/A);// in ohm
disp(round(R*10^-6),"The resistance of the bar in M ohm is");
