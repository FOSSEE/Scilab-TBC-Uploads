// Scilab Code Ex9.3: Page-464 (2011)
clc;clear;
mu0 = 1;....// Refactive index of fibre in air
mu2 = 1.59;....// Refactive index of the cladding 
NA = 0.2;....// Numerial aperture of optical fibre
mu1 = sqrt(NA^2+mu2^2);  // Refractive index of core
mu0 = 1.33;     // Refactive index of fibre in water
NA = sqrt(mu1^2-mu2^2)/mu0;    // Numerial aperture of optical fibre in water
theta_a = asind(NA);    // Acceptance angle for the fibre in water
printf("\nThe acceptance angle for the optical fibre in water = %3.1f degrees", theta_a);
 
// Result
// The acceptance angle for the optical fibre in water = 8.6 degrees 
