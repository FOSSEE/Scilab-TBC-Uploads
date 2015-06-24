// Scilab Code Ex9.4: Page-464 (2011)
clc;clear;
mu0 = 1;        // Refractive index of air
mu1 = 1.50;....// Refractive index of glass core`
del = 0.005;....// Fractional change in refractive index
mu2 = mu1*(1-del);      // Refractive index of cladding
printf("\nThe refractive index of cladding =%6.4f", mu2);
theta_c = asind(mu2/mu1);   // Critical angle, degrees
printf("\nThe critical angle = %5.2f degrees", theta_c);
theta_a = asind(sqrt(mu1^2-mu2^2)/mu0);     // Acceptance angle, degrees
printf("\nThe value of acceptance angle is = %4.2f degrees", theta_a); 
NA = mu1*sqrt(2*del);      // Numerical aperture of optical fibre
printf("\nThe NA of the optical fibre = %4.2f", NA);
 
// Result
// The refractive index of cladding =1.4925
// The critical angle = 84.27 degrees
// The value of acceptance angle is = 8.62 degrees
// The NA of the optical fibre = 0.15 
