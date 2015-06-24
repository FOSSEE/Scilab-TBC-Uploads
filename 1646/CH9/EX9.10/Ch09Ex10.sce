// Scilab Code Ex9.10: Page-467 (2011)
clc;clear;
mu1 = 1.52;....// Refractive index of core
a = 14.5e-006;....// Radius of the fibre core, m
del = 0.0007;....// Fractional index difference
lambda = 1.3e-006;....// Operating wavelength of optical fibre, m
mu2 = mu1*(1-del);      // Refractive index of cladding
v = 2*%pi*a*sqrt(mu1^2-mu2^2)/lambda;     // Cut-off parameter v of the optical fibre
printf("\nThe cut-off parameter of the optical fibre = %5.3f", v);
//The is number of modes supported by the fibre given by,
n = v^2/2;
printf("\nThe number of modes supported by the fibre = %d", ceil(n));

// Result
// The cut-off parameter of the optical fibre = 3.985
// The number of modes supported by the fibre = 8 
