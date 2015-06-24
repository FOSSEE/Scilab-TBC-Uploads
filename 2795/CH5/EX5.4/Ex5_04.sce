// Scilab Code Ex5.4 : Page-174 (2013)
clc; clear;
h = 6.63e-34;    // Planck's constant, Js
c = 3e+008;    // Speed of light, m/s
e = 1.6e-19;    // Energy equivalent of 1 eV, J/eV
m = 1.67e-27;    // Mass of a neutron, kg
k = 1.38e-23;    // Boltzmann constant, J/mol/K
T = [300 77];    // Temperatures, K
lambda = h*c/(sqrt(3*m*c^2/e*k/e*T(1))*e);    // The wavelength of the neutron at 300 K, nm
printf("\nThe wavelength of the neutron at %d K = %5.3f nm", T(1), lambda/1e-09);
lambda = h*c/(sqrt(3*m*c^2/e*k/e*T(2))*e);    // The wavelength of the neutron at 77 K, nm
printf("\nThe wavelength of the neutron at %d K = %5.3f nm", T(2), lambda/1e-09);

// Result
// The wavelength of the neutron at 300 K = 0.146 nm
// The wavelength of the neutron at 77 K = 0.287 nm 
