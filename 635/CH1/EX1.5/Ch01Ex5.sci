// Scilab Code Ex 1.5 Density of diamond: Page-9 (2010)
a = 3.57D-10; // Lattice parameter of a diamond crystal
M = 12D-03;     // Atomic weight of diamond, kg per mole
n1 = 8;    // No. of corner atoms in the diamond cubic unit cell
n2 = 6;    // No. of face centered atoms in the diamond cubic unit cell
n3 = 4;    // No. of atoms completely within the unit cell
n = 1/8*n1+1/2*n2+1*n3;    // No. of atoms per unit cell for an fcc lattice of NaCl crystal
N = 6.023D+23;    // Avogadro's No.
// Volume of the unit cell is given by
// a^3 = M*n/(N*d)
// Solving for d
d = M*n/(N*a^3);    // Density of diamond cubic unit cell
disp (round(d), "Density of diamond cubic unit cell, in kg per metre cube, is : ");

// Result 
// Density of diamond cubic unit cell, in kg per metre cube, is :
// 3503