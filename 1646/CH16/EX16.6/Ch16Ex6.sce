// Scilab Code Ex16.6 :Page-823 (2011)
clc; clear;
M = 119;        // Molecular weight of KBr, g-mole
rho = 2.7;    // Density of KBr, g per cm-cube
n = 4;    // No. of atoms per unit cell for an fcc lattice of KBr crystal
NA = 6.023D+23;    // Avogadro's No., atoms/mol
// Volume of the unit cell is given by
// a^3 = M*n/(N*d)
// Solving for a
a = (n*M/(rho*NA))^(1/3);    // Lattice constant of unit cell of KBr
printf("\nLattice constant for the KBr crystal = %4.2f angstrom", a/1e-008);

// Result 
// Lattice constant for the KBr crystal = 6.64 angstrom 
