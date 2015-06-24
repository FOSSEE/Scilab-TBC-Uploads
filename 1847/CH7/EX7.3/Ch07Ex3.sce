// Scilab Code Ex7.3:: Page-7.8 (2009)
clc; clear;
n1 = 1.46;     // Refractive index of the core material
delta = 0.01;   // Relative refractive index difference
NA = n1*sqrt(2*delta);   // Numerical aperture for the fibre 
theta_Q = %pi*NA^2;   // Solid acceptance angle of optical fibre for small angles, radians
// As relative refractive index, delta = 1-n2/n1, solving for n2
n2 = n1*(1-delta);   // Refractive index of cladding
phi_C = asind(n2/n1);   // Critical angle of optical fibre, degrees

printf("\nThe numerical aperture for the fibre  = %4.2f", NA);
printf("\nThe solid acceptance angle of the optical fibre  = %4.2f radians", theta_Q);
printf("\nThe critical angle of optical fibre = %4.1f degrees", phi_C);

// Result 
// The numerical aperture for the fibre  = 0.21
// The solid acceptance angle of the optical fibre  = 0.13 radians
// The critical angle of optical fibre = 81.9 degrees 
