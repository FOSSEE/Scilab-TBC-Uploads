// Scilab Code Ex1.40:: Page-1.57 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
m0 = 9.1e-031;   // Electronic mass, kg
c = 3e+08;      // Speed of light, m/s
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
phi = 180;     // Scattering angle of X-rays, degrees
lambda = 1.78;    // Wavelength of incident photon, m
lambda_prime = 1.798;  // Wavelength of scattered X-ray, angstrom 
// As from Compton shift formula
// lambda_prime - lambda = h/(m0*c)*(1-cosd(phi)), Change in photon wavelength, m
// Or we may write, lambda_prime - lambda = k*(1-cosd(phi))
// solving for k
k = (lambda_prime - lambda)/(1-cosd(phi));  // k = h/(m0*c) value, angstrom

// For phi = 60
phi = 60;       // New angle of scattering, degrees
lambda_prime = lambda + k*(1-cosd(phi)); // Wavelength of scattered radiation at 60 degree angle, angstrom
printf("\nThe wavelength of scattered X-ray at %d degrees view = %6.4f angstrom", phi, lambda_prime);
// Recoil energy of electron
E = h*c*(1/lambda - 1/lambda_prime)*1e+010;    // Recoil energy of electron, joule
printf("\nThe recoil energy of electron scattered through %d degrees = %4.1f eV", phi, E/e);      

// Result 
// The wavelength of scattered X-ray at 60 degrees view = 1.7845 angstrom
// The recoil energy of electron scattered through 60 degrees = 17.5 eV 
