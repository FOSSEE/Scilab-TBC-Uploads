// Scilab Code Ex9.7: Page-466 (2011)
clc;clear;
mu1 = 1.54;    // The refractive index of core
mu2 = 1.50;    // The refractive index of cladding
lambda = 1.3e-006;....// Operating wavelength of optical fibre, m
a = 25e-006;....// Radius of fibre core, m
v = 2*%pi*a*sqrt(mu1^2-mu2^2)/lambda;   // V-number of optical fibre 
printf("\nThe cut-off parameter of the optical fibre = %5.2f", v);
n = v^2/2;      // The number of modes supported by the fibre 
printf("\nThe number of modes supported by the fibre = %3d", ceil(n));

// Result
// The cut-off parameter of the optical fibre = 42.14
// The number of modes supported by the fibre = 888 
