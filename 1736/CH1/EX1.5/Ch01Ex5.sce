// Scilab Code Ex 1.5 : Page-18 (2006)
clc; clear;5
M_Na = 23;        // Atomic weight of Na, gram per mole
M_Cl = 35.5;        // Atomic weight of Cl, gram per mole
d = 2.18e+06;    // Density of Nacl salt, g per metre cube
n = 4;    // No. of atoms per unit cell for an fcc lattice of NaCl crystal
N = 6.023D+23;    // Avogadro's No.
// Volume of the unit cell is given by
// a^3 = M*n/(N*d)
// Solving for a
a = (n*(M_Na + M_Cl)/(d*N))^(1/3);    // Lattice constant of unit cell of NaCl
printf("\nLattice constant for the NaCl crystal = %4.2f angstorm", a/1e-010);

// Result 
// Lattice constant for the NaCl crystal = 5.63 angsotrm 
