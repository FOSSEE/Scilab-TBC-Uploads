// Scilab Code Ex4.13a: Page-142 (2006)
clc; clear;
n = 18.1e+022;  // Number of electrons per unit volume, per cm cube
N = n/2;    // Pauli's principle for number of energy levels, per cm cube
E_F = 11.58;     // Fermi energy of Al, eV
E = E_F/N;     // Interelectronic energy separation between bands of Al, eV
printf("\nThe interelectronic energy separation between bands of Al = %4.2e eV", E);

// Result 
// The interelectronic energy separation between bands of Al = 1.28e-022 eV 
