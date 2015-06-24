// Scilab Code Ex 1.16 :Page-27 (2006)
clc; clear;
R = 1;  // For simplicity we assume radius of atom to be unity, m
// From the right triangle LMN similar to trinagle LPO, LM/LO = R/(R + r) = LP/LO = sqrt(2/3), solving for r
r = poly(0, 'r');
r = roots(R/sqrt(2/3)-R-r);
printf("\nThe radius ratio of tetragonal void = %5.3f", r/R); 

// Result 
// The radius ratio of tetragonal void = 0.225 





