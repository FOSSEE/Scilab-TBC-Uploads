// Scilab Code Ex2.5 : Page-63 (2006)
clc; clear;
epsilon_0 = 8.854e-012; // Absolute electrical permittivity of free space, F/m
N = 6.023e+023;     // Avogadro's number
e = 1.6e-019;   // Energy equivalent of 1 eV, eV/J
r0 = 6.46e-010;     // Nearest neighbour distance of NaI
E = 157.1e+03;  // Binding energy of NaI, cal/mol
A = 1.747;  // Madelung constant for lattice binding energy
// As lattice binding energy, E = -A*e^2/(4*%pi*epsilon_0*r0)*(n-1)/n, solving for n
n = 1/(1+(4.186*E*4*%pi*epsilon_0*r0)/(N*A*e^2));   // Repulsive exponent of NaI
printf("\nThe repulsive exponent of NaI = %5.3f", n);

// Result 
// The repulsive exponent of NaI = 0.363 
