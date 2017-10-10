// Ex10_8  Page:214 (2014)
clc;clear;
a = 3.2e-10;    // Lattice parameter for lead, m:
M = 207.2;        // Atomic weight of Pb, gram per mole
rho = 11.36e+03;    // Density of Pb, kg per metre cube
N = 6.023D+26;    // Avogadro's No., per k-mol
// Volume of the unit cell is given by
// a^3 = M*n/(N*rho)
// Solving for n
n = a^3*rho*N/M; // Number of atoms per unit cell
printf("\nThe number of atoms per unit cell for an fcc lattice of lead = %d", n);

// Result
// The number of atoms per unit cell for an fcc lattice of lead = 1