// Scilab Code Ex9.6: Page-466 (2011)
clc;clear;
mu1 = 1.466;   // Refractive index of core
mu2 = 1.460;   // Refractive index of cladding
v = 2.4;....// Cut-off parameter of the optical fibre
lambda = 0.8e-006;....// Operating wavelength, m
NA = sqrt(mu1^2-mu2^2);
printf("\nThe NA of optical fibre = %4.2f", NA) ;
// Asthe cut-off parameter v of the optical fibre, v = 2*%pi*a*sqrt(mu1^2-mu2^2)/lambda, solving for a
a = lambda*v/(2*%pi*sqrt(mu1^2-mu2^2));
printf("\nThe core radius of the optical fibre = %4.2e micron", a/1e-006);

// Result
// The NA of optical fibre = 0.13
// The core radius of the optical fibre = 2.31e+00 micron 
