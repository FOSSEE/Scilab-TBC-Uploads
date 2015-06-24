// Scilab Code Ex1.2 Page-14 (2006)
clc; clear;
r = 0.143e-09;  // Radius of Nb unit cell, m
d = 8.57e+03; // Density of Nb unit cell, kg/metre-cube
M = 92.91e-03;        // Atomic weight of Nb, kg per mole
N = 6.023D+23;    // Avogadro's No.

// For fcc
a = 4*r/sqrt(2);    // Lattice parameter for fcc structure of Nb, m
n = a^3*d*N/M; // Number of lattice points per unit cell
if (modulo(n, int(n)) < 0.001) then
printf("\nThe number of atoms associated with the cell is %d, Nb should have fcc structure", int(n));
end

// For bcc
a = 4*r/sqrt(3);    // Lattice parameter for bcc structure of Nb, m
n = a^3*d*N/M; // Number of lattice points per unit cell
if (modulo(n, int(n)) < 0.001) then
printf("\nThe number of atoms associated with the cell is %d, Nb should have bcc structure", int(n));
end

// Result 
// The number of atoms associated with the cell is 2, Nb should have bcc structure 
