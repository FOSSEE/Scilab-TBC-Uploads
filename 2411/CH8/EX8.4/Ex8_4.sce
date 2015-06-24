// Scilab Code Ex8.4: Page-398 (2008)
clc; clear;
NA = 0.5;   // Numerical aperture of the optical fibre
n1 = 1.54;  // Refractive index of the core material
n2 = sqrt(n1^2-NA^2);   // Refractive index of the cladding in an optical fibre
printf("\nThe refractive index of the cladding in the optical fibre = %4.2f", n2);

// Result 
// The refractive index of the cladding in the optical fibre = 1.46 
