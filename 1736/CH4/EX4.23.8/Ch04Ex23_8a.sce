// Scilab Code Ex4.8a: Page-141 (2006)
clc; clear;
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
E_F = 7;  // Fermi energy, eV
k = 1.38e-023;  // Boltzmann constant, J/mol/K
T_F = E_F*e/k;    // Fermi temperature, K
printf("\nThe Fermi temperature corresponding to Fermi energy = %5.3e K", T_F);

// Result 
// The Fermi temperature corresponding to Fermi energy = 8.116e+004 K 
