// Scilab Code Ex 1.6 Calculating Unit cell dimensions: Page-9 (2010)
d = 2.7D+03;    // Density of fcc structure of aluminium, kg per metre cube
M = 26.98D-03;     // Atomic weight of aluminium, kg per mole
n = 4;       // No. of atoms per unit cell of fcc lattice structure of  aluminium
N = 6.023D+23;    // Avogadro's No.
// Volume of the unit cell is given by
// a^3 = M*n/(N*d)
// Solving for a
a = ((M*n)/(N*d))^(1/3);    // Lattice parameter of alumitnium unit cell
// For an fcc cryatal lattice, 
// 2^(1/2) = 4R = 2D
// Solving for D
D = (a/2^(1/2)); // Diameter of aluminium atom
disp (a/1D-10, "The Lattice parameter of aluminium, in angstrom, is : ");
disp(D/1D-10, "The diameter of aluminium atom, in angstrom, is : ");

// Result 
// The Lattice parameter of aluminium, in angstrom, is :
//     4.0486332
// The diameter of aluminium atom, in angstrom, is :
//     2.862816  