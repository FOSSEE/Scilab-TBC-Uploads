// Scilab Code Ex6.3: Page-192 (2006)
clc; clear;
N_A = 6.023e+023;   // Avogadro's number
// For Si
A = 28.1;   // Atomic weight of Si, g/mol
a = 5.43e-08;   // Lattice constant for Si, cm
n = 8/a^3;  // Number of atoms per unit volume, atoms/cc
rho = n*A/N_A;  // Density of Si, g/cc
printf("\nThe density of Si = %4.2f atoms per cc", rho);
// For GaAs
A = 69.7+74.9;   // Atomic weight of GaAs, g/mol
a = 5.65e-08;   // Lattice constant for Si, cm
n = 4/a^3;  // Number of atoms per unit volume, atoms/cc
rho = n*A/N_A;  // Density of GaAs, g/cc
printf("\nThe density of GaAs = %5.3f atoms per cc", rho);

// Result 
// The density of Si = 2.33 atoms per cc
// The density of GaAs = 5.324 atoms per cc 
