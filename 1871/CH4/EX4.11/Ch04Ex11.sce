// Scilab code Ex4.11: Pg:148 (2008)
clc;clear;
x0 = 12.34;    // Position of zero order fringe, mm
Lambda = 6000;    // Wavelength of light, angstrom
Lambda_prime = 5000;    // New wavelength of light, angstrom
omega = 0.239;    // Fringe width, mm
omega_prime = Lambda_prime/Lambda*omega;    // New fringe width, mm
d_20 = 20*omega_prime;     // Separation of 20th fringe, mm
x_20 = [d_20, -d_20];    // Position of 20th order fringe, mm 
x = x0 + x_20;     // Positions of 20th order fringe relative to zero order fringe, mm
printf("\nThe positions of 20th order fringe relative to zero order fringe are %5.2f mm or %4.2f mm", x(1), x(2));

// Result 
// The positions of 20th order fringe relative to zero order fringe are 16.32 mm or 8.36 mm 