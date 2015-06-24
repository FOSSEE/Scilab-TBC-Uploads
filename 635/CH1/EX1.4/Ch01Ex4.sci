// Scilab Code Ex 1.4 Lattice constant of a unit cell: Page-9 (2010)
M = 58.5;        // Atomic weight of NaCl, gram per mole
d = 2180D+03;    // Density of rock salt, per metre cube
n = 4;    // No. of atoms per unit cell for an fcc lattice of NaCl crystal
N = 6.023D+23;    // Avogadro's No.
// Volume of the unit cell is given by
// a^3 = M*n/(N*d)
// Solving for a
a = (n*M/(d*N))^(1/3);    // Lattice constant of unit cell of NaCl
disp (a/1D-10, "Lattice constant for the rock salt (NaCl) crystal, in angstrom, is : ");

// Result 
// Lattice constant for the rock salt (NaCl) crystal, in angstrom, is :
// 5.6275