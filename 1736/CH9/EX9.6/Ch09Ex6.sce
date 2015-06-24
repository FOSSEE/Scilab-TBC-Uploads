// Scilab Code Ex9.6 Page:284 (2006)
clc; clear;
h = 6.6e-034;     // Planck's constant, Js
e = 1.6e-019;       // Energy eqivalent of 1 eV, eV/J
k = 0.86e-004;  // Boltzmann constant, eV/K
T_c = 0.56;     // Critical temperature for superconducting Zr, K
E_g = 3.52*k*T_c;    // Energy gap of aluminium, J
c = 3e+08;      // Speed of light, m/s
lambda = h*c/(E_g*e);       // Wavelength of photon required to break a Cooper pair, m

printf("\nThe wavelength of photon required to break a Cooper pair = %3.1e m", lambda);

// Result 
// The wavelength of photon required to break a Cooper pair = 7.3e-03 m (Answer given in the textbook is wrong)
