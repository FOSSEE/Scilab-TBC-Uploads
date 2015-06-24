// Exa 2.24
clc;
clear;
close;
// Given data
e = 1.6*10^-19;// in C
Miu_e = 7.04*10^-3;// in m^2/volt-sec
n = 5.8*10^28;// number of electron/m^3
m = 9.1*10^-31;
E_F = 5.5;// in eV
Torque = (Miu_e/e)*m;// in sec 
disp(Torque,"Relaxtion time in sec is");
Rho = 1/(n*e*Miu_e);// in ohm cm
disp(Rho,"Resistivity of conductor in Ωm is");
V_F = sqrt( (2*E_F*e)/m );// in m/s
disp(V_F,"Velocity of electron with the fermi energy in m/s is");

// Note: The calculation of Part (ii) is wrong also the unit of resistivity of conductor is wrong
