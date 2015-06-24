// Scilab Code Ex16.4 : Page-822 (2011)
clc; clear;
p = 1.2;  // First coefficient of intercept along X-axis, angstrom
a = 1.2, b = 1.8, c = 2.0;    // Lattice parameters along three axes, angstrom
h = 2, k = 3, l = 1;    // Miller indices of lattice plane
// As p:q:r = a/h:b/k:c/l, solving for q and r
q = p*(b/k)/(a/h); // Second coefficient of intercept along X-axis, angstrom   
r = p*(c/l)/(a/h); // Third coefficient of intercept along X-axis, angstrom   
printf("\nThe lengths of the intercepts on Y and Z axes are %3.1f angstrom and %3.1f angstrom respectively", q, r);

// Result 
// The lengths of the intercepts on Y and Z axes are 1.2 angstrom and 4.0 angstrom respectively 
