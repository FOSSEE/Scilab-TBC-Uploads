// Scilab Code Ex 1.21 Page-32 (2006)
clc; clear;
a = 0.424; b = 2; c = 0.367;    // Intercepts on planes along three axes, m
// Here pa = 0.424; qb = 2; rc = 0.183, solving for p, q and r, we have
p = 0.424/a; q = 2/b; r = 0.183/c; // Coefficients of intercepts along three axes
h = 1/p;        // Reciprocate the first coefficient
k = 1/q;        // Reciprocate the second coefficient
l = 1/r;        // Reciprocate the third coefficient
printf("\nThe required miller indices are : (%d %d %d) ", h,k,l);

// Result 
// The required miller indices are : (1 1 2)  
