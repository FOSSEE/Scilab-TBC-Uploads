// Scilab Code Ex1.3 Number of Lattice points per unit cell Page-9 (2010)
a = 3.60D-10;    // Lattice parameter, m:
M = 63.6;        // Atomic weight, gram per mole
d = 8960D+03;    // Density of copper, g per metre cube
N = 6.023D+23;    // Avogadro's No.
// Volume of the unit cell is given by
// a^3 = M*n/(N*d)
// Solving for n
n = a^3*d*N/M; // Number of lattice points per unit cell
disp (n, "The number of atoms per unit cell for an fcc lattice of copper crystal is :");

// Result 
// The number of atoms per unit cell for an fcc lattice of copper crystal
// 3.9588702