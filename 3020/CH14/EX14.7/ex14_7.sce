clc;
clear all;
h = 6.626e-34; // Planck's constant
m = 9.11e-31; // Mass of an electron in Kg
e = 1.609e-19; // Charge of an electron
L = 0.1e-9 ; // Length of one dimensional box in meters
n = 1; // For ground state
E = (n^2*h^2)/(8*m*L^2*e);
disp('eV',E,'The energy of the electron in ground state is')
//Slight variation in answer as compared to textbook
