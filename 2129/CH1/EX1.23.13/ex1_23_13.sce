//exa 1.23.13
clc;
clear;
close;
//Given data
Mu_n = 700;//in cm^2/v-s
n_o = 10^17;// in /cm^3
q = 1.6 * 10^-19;// in C
l = 0.1;// in cm
A = 10^-6;
V = 10;// in V
Sigma = q * Mu_n * n_o;// in (ohm cm)^-1
Rho = 1/Sigma;//in ohm cm 
R = Rho * (l/A);// in ohm
I = V/R;// in A
disp(I*10^3,"The current in mA is");

