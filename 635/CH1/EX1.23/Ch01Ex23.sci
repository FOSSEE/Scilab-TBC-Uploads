// Scilab Code Ex 1.23 Indices of tetragonal lattice: Page-26 (2010)
// For a tetragonal system we have a = b
a = 1;    // Lattice parameter of the unit cell along x-axis    
b = 1;    // Lattice parameter of the unit cell along y-axis
c = 1.5;    // Lattice parameter of the unit cell along z-axis
l1 = 3;    // Length of the intercept along x-axis, angstrom
l2 = 4;    // Length of the intercept along y-axis, angstrom
l3 = 3;    // Length of the intercept along z-axis, angstrom
l = l1/a;    // Intercept per unit translation along x-axis
m = l2/b;    // Intercept per unit translation along y-axis
n = l3/c;    // Intercept per unit translation along z-axis
r1 = 1/l;    // Reciprocal of l
r2 = 1/m;    // Reciprocal of m
r3 = 1/n;    // Reciprocal of n
mul_fact = double(lcm(int32([l,m,n])));
m1 = mul_fact*r1;    // miller index along x-axis
m2 = mul_fact*r2;    // miller index along y-axis
m3 = mul_fact*r3;    // miller index along z-axis
printf("The required miller indices of the plane are : %d %d %d", m1, m2, m3);

// Result 
// The required miller indices of the plane are : 4 3 6

