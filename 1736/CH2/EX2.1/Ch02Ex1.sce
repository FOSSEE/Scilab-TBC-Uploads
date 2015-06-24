// Scilab Code Ex2.1 : Page-62 (2006)
clc; clear;
epsilon_0 = 8.854e-012; // Absolute electrical permittivity of free space, F/m
e = 1.6e-019;   // Energy equivalent of 1 eV, eV/J
r = 3.147e-010;     // Nearest neighbour distance for KCl, m
n = 9.1;    // Repulsive exponent of KCl
A = 1.748;  // Madelung constant for lattice binding energy
E = A*e^2/(4*%pi*epsilon_0*r)*(n-1)/n/e;     // Binding energy of KCl, eV
printf("\nThe binding energy of KCl = %5.3f eV", E);

// Result 
// The binding energy of KCl = 7.110 eV  
