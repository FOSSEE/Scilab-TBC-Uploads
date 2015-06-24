// Scilab Code Ex7.9: Page-379 (2008)
clc; clear;
h = 2; k = 3; l = 1; // Miller indices of the set of planes
p = 1/h;        // Reciprocate h
q = 1/k;        // Reciprocate k
r = 1/l;        // Reciprocate l
lx = 1.2;    // Intercept cut by plane along x-axis, angstrom
a = 1.2, b = 1.8, c = 2;    // Primitives of the crystal, angstrom
mul_fact = double(lcm(int32([h, k, l]))); // Find l.c.m. of h, k and l
pa = mul_fact*p*a;    
qb = mul_fact*q*b;
rc = mul_fact*r*c;
ly = lx*qb/pa;    // Length of intercept along y-axis
lz = lx*rc/pa;    // Length of intercept along z-axis
printf("\nThe length of intercept along y-axis = %3.1f angstrom", ly);
printf("\nThe length of intercept along z-axis = %3.1f angstrom", lz);

// Result
// The length of intercept along y-axis = 1.2 angstrom
// The length of intercept along z-axis = 4.0 angstrom 