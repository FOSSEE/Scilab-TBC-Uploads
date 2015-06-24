// Exa 2.17.8
clc;
clear;
close;
// given data
e = 1.6 * 10^-19;// in C
n_i = 1 * 10^19;// in per m^3
Mu_e = 0.36;// in m^2/volt.sec
Mu_h = 0.17;// in m^2/volt.sec 
A = 2;// in cm^2
A = A * 10^-4;// im m^2
t = 0.1;// in mm
t = t * 10^-3;// in m
V = 4;// in volts
Sigma_i = n_i * e * (Mu_e + Mu_h);// in mho/m
J = Sigma_i * (V/t);// in Amp/m^2
I = J * A;// in Amp
disp(I,"The current produced in a Ge sample in Amp is");
