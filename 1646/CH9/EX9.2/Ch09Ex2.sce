// Scilab Code Ex9.2: Page-463 (2011)
clc;clear;
mu_1 = 1.50;....// Refractive index of the core 
mu_2 = 1.45;....// Refractive index cladding
NA = mu_1*sqrt(2*(mu_1-mu_2)/mu_1);     // Numerical aperture of optical fibre
printf("\n The NA of the optical fibre = %5.3f", NA); 
theta_a = asind(NA);        // The acceptance angle of optical fibre, degrees
printf("\n The acceptance angle of the optical fibre = %5.2f degrees", theta_a); 
theta_c = asind(mu_2/mu_1); // The critical angle of the optical fibre, degrees
printf("\n The acceptance angle of the optical fibre = %4.1f degrees", theta_c);
 
// Result
// The NA of the optical fibre = 0.387
// The acceptance angle of the optical fibre = 22.8 degrees
// The acceptance angle of the optical fibre = 75.2 degrees 
