clc;
clear all;
rho1 = 1.7e-8; // Resistivity of copper wire at room temperature
T1 = 973; // Temperature in kelvin
T2 = 300; // Room temperature in kelvin
rho2 = rho1*(sqrt(T1)/sqrt(T2));
disp('Ohm.meter',rho2,'Resistivity of copper wire is')
