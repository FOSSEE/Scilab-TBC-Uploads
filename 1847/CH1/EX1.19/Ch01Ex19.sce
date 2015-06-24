// Scilab Code Ex1.19: Page-1.19 (2009)
clc; clear;
m = 9.1e-031;     // Mass of the electron, kg
h = 6.6e-034;     // Planck's constant
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
lambda = 9.1e-012; // de-Broglie wavelength of electron, m
// We have lambda = h/(m*v), solving for v
v = h/(m*lambda);   // Velocity of the electron, m/s
K = 1/2*m*v^2;     // Kinetic energy of electron, J
printf("\nThe kinetic energy of electron having wavelength %3.1e m = %4.2e eV", lambda, K/e);

// Result 
// The kinetic energy of electron having wavelength 9.1e-12 m = 1.81e+04 eV 

