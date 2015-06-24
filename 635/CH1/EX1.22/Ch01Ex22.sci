// Scilab Code Ex 1.22 Miller indices of lattice plane: Page-26 (2010)
a = 4;    // Lattice parameter of the unit cell    
b = 3;    // Lattice parameter of the unit cell
c = 2;    // Lattice parameter of the unit cell
l1 = 2;    // Length of the intercept along x-axis, m
l2 = 3;    // Length of the intercept along y-axis, m
l3 = 4;    // Length of the intercept along z-axis, m
l = l1/a;    // Intercept per unit translation along x-axis
m = l2/b;    // Intercept per unit translation along y-axis
n = l3/c;    // Intercept per unit translation along z-axis
r1 = 1/l;    // Reciprocal of l
r2 = 1/m;    // Reciprocal of m
r3 = 1/n;    // Reciprocal of n
m1 = 2*r1;    // miller index along x-axis
m2 = 2*r2;    // miller index along y-axis
m3 = 2*r3;    // miller index along z-axis
printf("The required miller indices of the plane are : %d %d %d", m1, m2, m3);

// Result 
// The required miller indices of the plane are :
//     4, 2, 1

