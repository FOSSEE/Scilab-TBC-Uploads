// Scilab Code Ex9.5: Page-465 (2011)
clc;clear;
NA = 0.22;      // Numerical aperture of the optical fibre
del = 0.012;....// Fractional difference between the refractive index of core and cladding
mu1 = NA/sqrt(2*del);   // The refractive index of core of optical fibre
printf("\nThe refractive index of core = %4.2f", mu1);
mu2 = mu1*(1-del);  // The refractive index of cladding of optical fibre
printf("\nThe refractive index of cladding = %4.2f", mu2); 

// Result
// he refractive index of core = 1.42
// The refractive index of cladding = 1.40
