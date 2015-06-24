// Scilab Code Ex9.2.6: Page-416 (2008)
clc; clear;
h = 6.63e-034;    // Planck's constant, Js
m_e = 9.11e-031;    // Rest mass of an electron, kg
e = 1.6e-019;    // Energy equivalent of 1 eV, J
K = 3*e;    // Kinetic energy of the electron in metllic sodium, J
lambda = h/sqrt(2*m_e*K)/1e-010;    // de Broglie wavelength of the valence electron, angstrom
printf("\nThe de-Broglie wavelength of the valence electron = %3.1f angstrom", lambda);

// Result 
// The de-Broglie wavelength of the valence electron = 7.1 angstrom 