// Scilab Code Ex6.13 : Distance between nearest neighbours of NaCl: Page-138 (2010)
M = 23+35.5;        // Molecular weight of NaCl, kg per k-mole
d = 2.18e+03;    // Density of rock salt, kg per metre cube
n = 4;    // No. of atoms per unit cell for an fcc lattice of NaCl crystal
N = 6.023D+26;    // Avogadro's No., atoms/k-mol
// Volume of the unit cell is given by
// a^3 = M*n/(N*d)
// Solving for a
a = (n*M/(d*N))^(1/3);    // Lattice constant of unit cell of NaCl
printf("\nThe distance between nearest neighbours of NaCl structure = %5.3e", a/2);

// Result 
// The distance between nearest neighbours of NaCl structure = 2.814e-010 