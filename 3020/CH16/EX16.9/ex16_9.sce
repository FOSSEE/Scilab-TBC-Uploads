clc;
clear all;
N = 6.022e23; // Avagadros number
at = 63.5; // Atomic weight of copper
m = 9.1e-31; // Mass of electron
e = 1.6e-19;// Charge of an electron
tr = 1e-14; // Relaxation time
d = 8900e3; // Density of electrons
n = (N*d)/at;
 n1 = 1; //Number of electrons free per atom in copper is 1
 sigma = (n*e^2*tr)/m;
 disp('1/(ohm.meter)',sigma,'The electrical conductivity is') 
