// Scilab Code Ex12.1: Page-12.6 (2004)
clc;clear;
n1 = 1.54;    // Refractive index of fibre core
n2 = 1.50;    // Refractive index of fibre cladding
NA = sqrt(n1^2 - n2^2);    // Numerical aperture for optical fibre
// As sin(theta_a) = sqrt(n1^2 - n2^2), solving for theta_a
theta_a = asind(sqrt(n1^2 - n2^2));    //  acceptance angle of optical fibre, degrees
printf("\nNumerical aperture for optical fibre = %5.3f", NA);
printf("\nThe acceptance angle of optical fibre = %4.1f degrees", theta_a);

// Result
//  Numerical aperture for optical fibre = 0.349
//  The acceptance angle of optical fibre = 20.4 degrees 

