// Scilab Code Ex4.15a: Page-143 (2006)
clc; clear;
m = 9.1e-031;   // Mass of the electron, kg
h = 6.626e-034; // Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
h_cross = h/(2*%pi);    // Reduced Planck's constant, Js
E_F = 7;    // Fermi energy of Cu, eV
V = 1e-06;  // Volume of the cubic metal, metre cube
D_EF = V/(2*%pi^2)*(2*m/h_cross^2)^(3/2)*(E_F)^(1/2)*e^(3/2);   // Density of states in Cu contained in cubic metal, states/eV
d = 1/(D_EF);     // Electronic energy level spacing between successive levels of Cu, eV
printf("\nThe electronic energy level spacing between successive levels of Cu = %4.2e eV", d);

// Result 
// The electronic energy level spacing between successive levels of Cu = 5.57e-023 eV 
