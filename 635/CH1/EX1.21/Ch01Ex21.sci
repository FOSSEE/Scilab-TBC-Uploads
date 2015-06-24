// Scilab Code Ex 1.21 Length of the intercepts: Page-26 (2010)
a = 1.21D-10;    // Lattice parameter of the unit cell, m    
b = 1.84D-10;    // Lattice parameter of the unit cell, m
c = 1.97D-10;    // Lattice parameter of the unit cell, m
p = 1/2;    // Reciprocal of miller index on x-axis
q = 1/3;    // Reciprocal of miller index on y-axis
r = 1/(-1);    // Reciprocal of miller index on z-axis
l1 = 1.21D-10;    // Actual length of the intercept along x-axis, m
mul_fact = l1/(p*a); // Calculate multiplication factor
l2 = mul_fact*q*b;    // Actual length of the interceptalong y-axis, m
l3 = mul_fact*r*c;    // Actual length of the intercept along z-axis, m
disp(l2/1D-10, "The length of the intercept along y-axis, in angstrom, is : ");
disp(l3/1D-10, "The length of the intercept along z-axis, in angstrom, is : ");

// Result 
// The length of the intercept along y-axis, in angstrom, is :
//     1.2266667
// The length of the intercept along z-axis, in angstrom, is :
//   - 3.94
