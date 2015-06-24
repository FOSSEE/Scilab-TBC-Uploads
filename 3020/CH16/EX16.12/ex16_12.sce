clc;
clear all;
e = 1.6e-19; // Charge of an electron
m = 9.11e-31; // Mass of an electron in Kg
rho = 1.54e-8; // Resistivity
EF= 5.5*e; // Fermi energy in joule
n = 5.8e28; // Concentration of electrons per cubic meters
E = 100; // Electric field in V/m
tr = m/(rho*n*e^2); // Relaxation time
u = (e*tr)/m; // Mobility of electrons
disp('m^2/(V.s)',u,'Mobility of electrons')
vd = (e*tr*E)/m; //drift velocity of electrons
disp('m/s',vd,'The drift velocity of electrons is')
VF = sqrt((2*EF)/m);// Fermi velocity
lambda = VF*tr; // Mean free path
disp('m',lambda,'The mean free path is')
