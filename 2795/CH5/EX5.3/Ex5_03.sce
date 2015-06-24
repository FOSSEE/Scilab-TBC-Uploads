// Scilab Code Ex5.3 : Page-173 (2013)
clc; clear;
m = 9.1e-31;    // Mass of the electron, kg
h = 6.63e-34;    // Planck's constant, Js
c = 3e+008;    // Speed of light, m/s
e = 1.6e-19;    // Energy equivalent of 1 eV, J/eV
V0 = 54;    // Potential difference between electrodes, V
lambda = h*c/(sqrt(2*m*c^2/e*V0)*e*1e-009);    // de Broglie wavelength of the electron, nm
printf("\nThe de Broglie wavelength of the electron used by Davisson and Germer = %5.3f nm", lambda);

// Result
// The de Broglie wavelength of the electron used by Davisson and Germer = 0.167 nm 
