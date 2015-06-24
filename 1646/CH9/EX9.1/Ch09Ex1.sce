// Scilab Code Ex9.1: Page-463 (2011) 
clc;clear;
mu_1 = 1.55;....// Refractive index of the core 
mu_2 = 1.50;....// Refractive indices of cladding 
NA = mu_1*sqrt(2*(mu_1-mu_2)/mu_1); 
printf("\nThe NA of the optical fibre = %5.3f", NA); 
theta_a = asind(NA);    // The acceptance angle of optical fibre, degrees
printf("\nThe acceptance angle of the optical fibre is = %4.1f degrees", theta_a); 

// Result
// The NA of the optical fibre = 0.394
// The acceptance angle of the optical fibre is = 23.2 degrees 
