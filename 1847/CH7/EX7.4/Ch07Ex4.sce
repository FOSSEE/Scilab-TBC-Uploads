// Scilab Code Ex7.4:: Page-7.9 (2009)
clc; clear;
n1 = 1.54;     // Refractive index of the core material
NA = 0.45;   // Numerical aperture for the fibre 
n2 = sqrt(n1^2-NA^2);   // Refractive index of cladding

printf("\nThe refractive index of cladding = %4.2f", n2);

// Result 
// The refractive index of cladding = 1.47 
