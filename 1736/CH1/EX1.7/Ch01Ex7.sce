// Scilab Code Ex 1.7 : Page-20 (2006)
clc; clear;
N = 6.023e+23;  // Avogadro's number
M = 12.01e-03;  // Atomic weight of diamond/graphite, kg

// For diamond
a = 3.568e-010;     // Lattice parameter of diamond, m
rho = 3.518e+03;    // Density of diamond, kg per metre cube
n = a^3*rho*N/M;    // Number of atoms in the unit cell of diamond structure
printf("\nThe number of atoms in the unit cell of diamond structure = %1d", n);

// For graphite
a = 2.451e-010;     // First lattice parameter of graphite, m
c = 6.701e-010;     // Third lattice parameter of graphite, m
rho = 2.2589e+03;    // Density of graphite, kg per metre cube
V = 3*sqrt(3)*a^2*c/2;  // Volume of hexagonal unit cell of graphite, metre cube
n = V*rho*N/M;    // Number of atoms in the unit cell of graphite structure
printf("\nThe number of atoms in the unit cell of graphite structure = %2d", ceil(n));

// Result 
// The number of atoms in the unit cell of diamond structure = 8
// The number of atoms in the unit cell of graphite structure = 12 

