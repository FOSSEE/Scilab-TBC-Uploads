//Exa 2.24.2
clc;
clear;
close;
//Given data
Mu_e = 7.04 * 10^-3;// in m^2/v-s
m = 9.1 * 10^-31;
E_F = 5.5;// in eV
n = 5.8 * 10^28;
e = 1.6 * 10^-19;// in C
Torque = (Mu_e/e) * m;// in sec
disp(Torque,"Relaxation Time in sec is ");
Rho = 1 /(n * e * Mu_e);// in ohm-m
disp(Rho,"Resistivity of conductor in ohm-m is ");
V_F = sqrt((2 * E_F * e)/m);// in m/s
disp(V_F,"Velocity of electrons with fermi-energy in m/s is");

