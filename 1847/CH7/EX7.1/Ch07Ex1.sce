// Scilab Code Ex7.1:: Page-7.7 (2009)
clc; clear;
n1 = 1.6;       // Refractive index of core material of fibre
n2 = 1.3;       // Refractive index of cladding material of fibre
phi_C = asind(n2/n1);   // Critical angle of optical fibre, degrees
theta_Q = asind(sqrt(n1^2-n2^2));   // Acceptance angle of optical fibre, degrees

printf("\nThe critical angle of optical fibre = %4.1f degrees", phi_C);
printf("\nThe angle of acceptance cone = %5.1f degrees", 2*theta_Q);

// Result 
// The critical angle of optical fibre = 54.3 degrees
// The angle of acceptance cone = 137.7 degrees 
