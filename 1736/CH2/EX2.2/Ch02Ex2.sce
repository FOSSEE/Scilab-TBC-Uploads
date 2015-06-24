// Scilab Code Ex2.2 : Page-62 (2006)
clc; clear;
epsilon_0 = 8.854e-012; // Absolute electrical permittivity of free space, F/m
N = 6.023e+023;     // Avogadro's number
e = 1.6e-019;   // Energy equivalent of 1 eV, eV/J
a0 = 5.63e-010;      // Lattice parameter of NaCl, m
r0 = a0/2;      // Nearest neighbour distance for NaCl, m
n = 8.4;    // Repulsive exponent of NaCl
A = 1.748;  // Madelung constant for lattice binding energy
E = A*e^2/(4*%pi*epsilon_0*r0)*(n-1)/n/e;     // Binding energy of NaCl, eV
printf("\nThe binding energy of NaCl = %5.3f kcal/mol", E*N*e/(4.186*1e+03));

// Result 
// The binding energy of NaCl = 181.101 eV 
