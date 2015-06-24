// Scilab Code Ex5.11: Page-288 (2008)
clc; clear;
c = 3e+008;    // Speed of light, m/s
e = 1.6e-019;    // Energy equivalent of 1 eV, J
h = 6.62e-034;    // Planck's constant, Js
m0 = 9.1e-031;    // Rest mass of an electron, kg
alpha = 90;    // Scattering angle for X-ray photon, degree
d_lambda = h/(m0*c)*(1-cosd(alpha));    // Wavelength shift after collision, m
lambda = d_lambda;    // Wavelength of the incident photon according to the condition, m
E = h*c/(lambda*e*1e+006);    // Energy of the incident photon, MeV
printf("\nThe wavelength of the incident photon = %6.4e m", lambda);
printf("\nThe energy of the incident photon = %4.2f MeV", E);

// Result
// The wavelength of the incident photon = 2.4249e-012 m
// The energy of the incident photon = 0.51 MeV 