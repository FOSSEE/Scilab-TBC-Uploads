// Scilab Code Ex4.7: Page-121 (2006)
clc; clear;
h = 6.625e-034; // Planck's constant, Js
h_cross = h/(2*%pi);    // Reduced Planck's constant, Js
m = 9.11e-031;   // Mass of an electron, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
V = 1e-05;    // Volume of cubical box, metre cube
E_F = 5*e;  // Fermi energy, J 
D_EF = V/(2*%pi^2)*(2*m/h_cross^2)^(3/2)*E_F^(1/2)*e;     // Density of states at Fermi energy, states/eV
printf("\nThe density of states at Fermi energy = %4.2e states/eV", D_EF);

// Result 
// The density of states at Fermi energy = 1.52e+023 states/eV 

