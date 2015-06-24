// Scilab code Ex8.7: Page:249 (2006)
clc; clear;
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
h = 6.626e-034; // Planck's constant, Js
h_cross = h/(2*%pi);    // Reduced Planck's constant, Js
m = 9.1e-031;   // Mass of an electron, kg
mu = e*h_cross/(2*m);    // Bohr magneton, J/T
mu_H = mu/e;    // Magnetic energy, eV
kT = 0.025;    // Energy associated with two degrees of freedom, eV
E_ratio = mu_H/kT;  // Exceptional terms in Langevin's function
printf("\nThe magnitude of mu*H/(k*T) = %3.1e", E_ratio);

// Result 
// The magnitude of mu*H/(k*T) = 2.3e-003 
