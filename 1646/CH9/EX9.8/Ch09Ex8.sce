// Scilab Code Ex9.8: Page-466 (2011)
clc;clear;
mu1 = 1.54;....// Refractive index of core
v = 2.405;....// Cut-off parameter of optical fibre
lambda = 1.3e-006;....// Operating wavelength of optical fibre, m
a = 1e-006;....// Radius of the core, 
NA = v*lambda/(2*%pi*a);    // Numerical aperture of optical fibre
del = 1/2*(NA/mu1)^2;   //  Fractional change in refractive index of core and cladding
printf("\nThe fractional difference of refractive indices of core and cladding = %7.5f", del);
mu2 = mu1*(1-del);     // Maximum value of refractive index of cladding
printf("\nThe maximum refractive index of cladding = %5.3f", mu2);

// Result
// The fractional difference of refractive indices of core and cladding = 0.05220
// The maximum refractive index of cladding = 1.460 
