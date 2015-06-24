// Scilab Code Ex16.7 : Page-823 (2011)
clc; clear;
M = 63.5;        // Molecular weight of Cu, g-mole
rho = 8.96;    // Density of Cu, g per cm-cube
n = 4;    // No. of atoms per unit cell for an fcc lattice of Cu 
NA = 6.023D+23;    // Avogadro's No., atoms/mol
// Volume of the unit cell is given by
// a^3 = M*n/(N*d)
// Solving for a
a = (n*M/(rho*NA))^(1/3);    // Lattice constant of unit cell of Cu
d = a/sqrt(2);    // Distance between the two nearest Cu atoms, angstrom 
printf("\nLattice constant for the Cu crystal = %4.2f angstrom", a/1e-008);
printf("\nThe distance between the two nearest Cu atoms = %4.2f angstrom", d/1e-008);

// Result 
// Lattice constant for the Cu crystal = 3.61 angstrom
// The distance between the two nearest Cu atoms = 2.55 angstrom 
