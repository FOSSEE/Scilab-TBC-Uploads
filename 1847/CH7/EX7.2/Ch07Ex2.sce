// Scilab Code Ex7.2:: Page-7.8 (2009)
clc; clear;
n1 = 1.50;       // Refractive index of core material of fibre
n2 = 1.47;       // Refractive index of cladding material of fibre
phi_C = asind(n2/n1);   // Critical angle of optical fibre, degrees
NA = sqrt(n1^2-n2^2);   // Numerical aperture for the fibre 
theta_Q = asind(sqrt(n1^2-n2^2));   // Acceptance angle of optical fibre, degrees

printf("\nThe critical angle of optical fibre = %4.1f degrees", phi_C);
printf("\nThe numerical aperture for the fibre  = %5.3f", NA);
printf("\nThe angle of acceptance cone  = %5.1f degrees", theta_Q);

// Result 
// The critical angle of optical fibre = 78.5 degrees
// The numerical aperture for the fibre  = 0.298
// The angle of acceptance cone  =  17.4 degrees 
