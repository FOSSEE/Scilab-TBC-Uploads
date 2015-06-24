// Scilab Code Ex7.4 : Wavelength of photon to break up a Cooper-pair: Page-152 (2010)
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
c = 3e+08;    // Speed of light in free space, m/s
h = 6.626e-034;    // Planck's constant, Js
E_g = 1.5e-004;   // Superconducting energy gap for a material, eV
// As E_g = h*f = h*c/lambda, solving for lambda
lambda = h*c/(E_g*e);    // Wavelength of photon to break up a Cooper-pair, m
printf("\nThe wavelength of photon to break up a Cooper-pair = %4.2e m", lambda);

// Result 
// The wavelength of photon to break up a Cooper-pair = 8.28e-003 m 