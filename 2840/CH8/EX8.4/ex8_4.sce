clc;
clear all;
e = 1.6*1e-19; // Charge of electrons in coloumbs
m = 9.1*1e-31; // Mass of electrons in Kg
Ef = 7*e ; //Fermi energy in electrons volt
t = 3*1e-14; // Relaxation time in seconds
vf = sqrt(Ef*2/m);
lambda = vf*t;//The mean free path of electrons 
disp('Meters',lambda,'The mean free path of electrons is');
