// Scilab Code Ex 1.15 :Page-27 (2006)
clc; clear;
R = 1;  // For simplicity we assume radius of atom to be unity, m
// From the right triangle LMO, LM/LO = R/(R + r) = cosd(30), solving for r
r = poly(0, 'r');
r = roots(R/cosd(30)-R-r);
printf("\nThe radius of triangular void = %5.3fR", r); 

// Result 
// The radius of triangular void = 0.155R 





