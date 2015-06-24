// Scilab Code Ex4.14a: Page-142 (2006)
clc; clear;
m = 9.1e-031;   // Mass of the electron, kg
h = 6.626e-034; // Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
h_cross = h/(2*%pi);    // Reduced Planck's constant, Js
E_F = 7;    // Fermi energy of Cu, eV
V = 1e-06;  // Volume of the cubic metal, metre cube
D_EF = V/(2*%pi^2)*(2*m/h_cross^2)^(3/2)*(E_F)^(1/2)*e^(3/2);   // Density of states in Cu contained in cubic metal, states/eV
printf("\nThe density of states in Cu contained in cubic metal = %3.1e states/eV", D_EF);

// Result 
// The density of states in Cu contained in cubic metal = 1.8e+022 states/eV 
