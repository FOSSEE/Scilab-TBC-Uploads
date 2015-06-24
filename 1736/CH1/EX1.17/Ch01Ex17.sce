// Scilab Code Ex 1.17 :Page-28 (2006)
clc; clear;
R = 1;  // For simplicity we assume radius of atom to be unity, m
// From the isosceles right triangle LMN, LM/LO = (R + r)/R = sqrt(2)/1, solving for r
r = poly(0, 'r');
r = roots(R*sqrt(2)-R-r);
printf("\nThe radius ratio of octahedral void = %5.3f", r/R); 

// Result 
// The radius ratio of octahedral void = 0.414 





