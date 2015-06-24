//Exa 2.24
format('v',9)
clc;
clear;
close;
//Given data
Mu_e = 7.04 * 10^-3;// in m^2/v-s
m = 9.1 * 10^-31;
E_F = 5.5;// in eV
n = 5.8 * 10^28;
e = 1.6 * 10^-19;// in C
// Relaxation Time 
Torque = (Mu_e/e) * m;// in sec
disp(Torque,"Relaxation Time in sec is ");
// Resistivity of conductor 
Rho = 1 /(n * e * Mu_e);// in ohm-m
disp(Rho,"Resistivity of conductor in ohm-m is ");
// Velocity of electrons with fermi-energy 
V_F = sqrt((2 * E_F * e)/m);// in m/s
disp(V_F,"Velocity of electrons with fermi-energy in m/s is");

//Note: The calculated value of Resistivity of conductor is wrong.
