// Scilab Code Ex9.9: Page-467 (2011)
clc;clear;
mu1 = 1.45;....// Index of refraction of core
NA = 0.16;....// Numerical aperture of step index fibre
a = 3e-006;....// Radius of the core, m
lambda = 0.9e-006;....// Operating wavelength of optical fibre, m
v = 2*%pi*a*NA/lambda;      // The normalized frequency or v-number of optical fibre
printf("\nThe normalized frequency of the optical fibre = %5.2f", v);

// Result
// The normalized frequency of the optical fibre =  3.35 



