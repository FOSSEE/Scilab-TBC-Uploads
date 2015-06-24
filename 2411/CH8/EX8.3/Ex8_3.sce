// Scilab Code Ex8.3: Page-398 (2008)
clc; clear;
h = 6.626e-034;     // Planck's constant, Js
c = 3e+008;     // Speed of light, m/s
T = 27+273;     // Room temperature, K
k = 1.38e-023;  // Boltzmann constant, J/mol/K
lambda = h*c/(k*T); // Wavelength of radiation mitted at room temperature, m
printf("\nThe wavelength of radiation mitted at room temperature = %3.1e m", lambda);

// Result 
// The wavelength of radiation mitted at room temperature = 4.8e-05 m
