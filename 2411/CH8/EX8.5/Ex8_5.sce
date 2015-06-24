// Scilab Code Ex8.5: Page-398 (2008)
clc; clear;
n1 = 1.51;  // Refractive index of the core material
n2 = 1.47;   // Refractive index of the cladding 
NA = sqrt(n1^2-n2^2);   // Numerical aperture of the optical fibre
n0 = 1;     // Refractive index of air
theta_a = asin(NA/n0);  // Acceptance angle of the optical fibre, rad
printf("\nThe numerical aperture of the optical fibre = %6.4f", NA);
printf("\nThe acceptance angle of the optical fibre = %4.2f degrees", theta_a*180/3.14);

// Result 
// The numerical aperture of the optical fibre = 0.3453
// The acceptance angle of the optical fibre = 20.21 degrees 
