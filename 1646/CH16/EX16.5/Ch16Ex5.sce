// Scilab Code Ex16.5 : Page-822 (2011)
clc; clear;
M = 58.5;        // Molecular weight of NaCl, g-mole
rho = 2.198e+03;    // Density of Nacl, kg per metre cube
n = 4;    // No. of atoms per unit cell for an fcc lattice of NaCl crystal
NA = 6.023D+26;    // Avogadro's No., atoms/k-mol
// Volume of the unit cell is given by
// a^3 = M*n/(N*d)
// Solving for a
a = (n*M/(rho*NA))^(1/3);    // Lattice constant of unit cell of NaCl
printf("\nLattice constant for the NaCl crystal = %4.2f angstrom", a/1e-010);

// Result 
// Lattice constant for the NaCl crystal = 5.61 angstrom 
