clc;
clear all;
h = 6.626e-34; // Planck's constant
m = 9.11e-31; // Mass of an electron in Kg
e = 1.609e-19; // Charge of an electron
L = 0.1e-9 ; // Length of one dimensional box in meters
n1 = 1; // For ground state
E1 = (n1^2*h^2)/(8*m*e*L^2);
n2 = 6 ; // For fifth excited state
E6 = (n2^2*h^2)/(8*m*e*L^2);
E = (E6-E1);
disp('eV',E,'The energy reqiured to excite the electron from ground state to ffth state is')
// Wrong answer in textbook... Checked in calculator
