// Scilab Code Ex4.6a: Page-139 (2006)
clc; clear;
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
E_F = 7.0;  // Fermi energy of Cu, eV
f_E = 0.9;  // Occupation probability of Cu
k = 1.38e-023;  // Boltzmann constant, J/mol/K
T = 1000;   // Given temperature, K
// We have, f_E = 1/(exp((E-E_F)*e/(k*T))+1), solving for E
E = k*T*log(1/f_E-1) + E_F*e;     // Energy level of Cu for 10% occupation probability at 1000 K, J
printf("\nThe energy level of Cu for 10 percent occupation probability at 1000 K = %4.2f eV", E/e);

// Result 
// The energy level of Cu for 10 percent occupation probability at 1000 K = 6.81 eV 
