// Scilab Code Ex2.3 : Page-62 (2006)
clc; clear;
epsilon_0 = 8.854e-012; // Absolute electrical permittivity of free space, F/m
N = 6.023e+023;     // Avogadro's number
e = 1.6e-019;   // Energy equivalent of 1 eV, eV/J
E = 162.9e+03;  // Binding energy of KCl, cal/mol
n = 8.6;    // Repulsive exponent of KCl
A = 1.747;  // Madelung constant for lattice binding energy
// As lattice binding energy, E = A*e^2/(4*%pi*epsilon_0*r0)*(n-1)/n, solving for r0
r0 = A*N*e^2/(4*%pi*epsilon_0*E*4.186)*(n-1)/n;     // Nearest neighbour distance of KCl, m
printf("\nThe nearest neighbour distance of KCl = %4.2f angstorm", r0/1e-010);

// Result 
// The nearest neighbour distance of KCl = 3.14 angstorm 
