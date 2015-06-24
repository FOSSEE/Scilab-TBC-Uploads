// Scilab Code Ex7.3: Page-377 (2008)
clc; clear;
M = 58.46;    // Gram atomic mass of NaCl, g/mole
N = 6.023e+023;    // Avogadro's number
rho = 2.17;    // Density of NaCl, g/cc
m = M/N;    // Mass of each NaCl molecule, g
n = rho/m;    // Number of NaCl molecules per unit volume, molecules/cc
N = 2*n;    // Number of atoms per unit volume, atoms/cc
a = (1/N)^(1/3);    // Distance between two adjacent atoms in the NaCl, cm
printf("\nThe distance between two adjacent atoms in the NaCl = %4.2f angstrom", a/1e-008);

// Result
// The distance between two adjacent atoms in the NaCl = 2.82 angstrom 