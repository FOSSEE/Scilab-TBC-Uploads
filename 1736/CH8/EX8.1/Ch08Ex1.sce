// Scilab code Ex8.1 Page:241 (2006)
clc; clear;
rho = 7.9e+03;    // Density of iron, kg per cubic meter
A = 56e-03;    // Atomic weight of iron, g/mol
N_A = 6.02e+023;    // Avogadro's number, atoms per mole
mu_B = 9.3e-024;    // Bohr magneton;    // Ampere meter square
n = rho*N_A/A;    // Total number of atoms per unit cell, per cubic meter
M = 2.2*n*mu_B;    // Spontaneous magnetization of iron, Ampere per meter
printf("\nSpontaneous magnetization of iron = %4.2e Ampere per meter", M);

// Result 
// Spontaneous magnetization of iron = 1.74e+006 Ampere per meter 
