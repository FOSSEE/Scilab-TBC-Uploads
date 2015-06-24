// Scilab Code Ex9.2.5: Page-415 (2008)
clc; clear;
c = 3e+008;    // Speed of light in free space, m/s
h = 6.63e-034;    // Planck's constant, Js
m_e = 9.11e-031;    // Rest mass of an electron, kg
lambda = 0.3;    // Wavelength of incident X-ray photon, angstrom
phi = 45;    // The angle of scattering, degrees
lambda_prime = lambda + h/(m_e*c*1e-010)*(1-cosd(phi));    // The wavelength of the scattered photon, angstrom
printf("\nThe wavelength of the scattered photon = %6.4f angstrom", lambda_prime);

// Result 
// The wavelength of the scattered photon = 0.3071 angstrom 