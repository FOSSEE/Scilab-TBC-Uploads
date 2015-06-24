// Scilab Code Ex6.1 : Lattice parameter of NaCl crystal : Page-134 (2010)
M = 23+35.5;        // Molecular weight of NaCl, kg per k-mole
d = 2.18e+03;    // Density of rock salt, kg per metre cube
n = 4;    // No. of atoms per unit cell for an fcc lattice of NaCl crystal
N = 6.023D+26;    // Avogadro's No., atoms/k-mol
// Volume of the unit cell is given by
// a^3 = M*n/(N*d)
// Solving for a
a = (n*M/(d*N))^(1/3);    // Lattice constant of unit cell of NaCl
printf("\nLattice parameter for the NaCl crystal = %4.2f angstrom", a/1e-010);

// Result 
// Lattice parameter for the NaCl crystal = 5.63 angstrom 