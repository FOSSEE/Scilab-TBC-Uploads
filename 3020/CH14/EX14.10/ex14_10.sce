clc;
clear all;
h = 6.626e-34; // Planck's constant
m = 9.11e-31; // Mass of an electron in Kg
e = 1.6e-19; // Charge of an electron
L = 4e-9 ; // Length of one dimensional potential well in meters
n = 1; // For ground state
E = (n^2*h^2)/(8*m*L^2*e);
disp('eV',E,'The energy of the electron in ground state is')
// Wrong answer given in textbook.. checked in calculator
