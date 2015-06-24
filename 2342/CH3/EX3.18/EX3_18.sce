// Exa 3.18
format('v',6)
clc;
clear;
close;
// Given data
q = 1.6 * 10^-19;// in C
n_n = 5 * 10^20;// in /m^3
n_n = n_n * 10^-6;// in cm^3
Mu_n = 0.13;// in m^2/V-sec
Mu_n = Mu_n * 10^4;// in cm^2/V-sec
Sigma_n = q * n_n * Mu_n;// in (ohm-cm)^-1
Rho = 1/Sigma_n;// in Ω-cm
l = 0.1;// in cm
A = 100;// µm^2
A = A * 10^-8;// in cm^2
R = Rho * (l/A);// in Ohm
R=round(R*10^-6);// in MΩ
disp(R,"The resistance of the bar in MΩ is"); 
