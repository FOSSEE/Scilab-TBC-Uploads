// Ex2_6 Page:36 (2014)
clc; clear;
h = 6.626e-034; // Planck's constant, Js
c = 3e+08;  // Speed of light in vacuum, m/s
E0 = 0.511; // Rest energy of an electron, MeV
e = 1.6e-019;   // Energy equivalent of 1 eV, J
E = 2*E0*e*1e+06; // Rest energy of electron-positron pair, J
lambda = h*c/E; // Wavelength of photon to bring pair production, m
printf("\nWavelength of a photon that can produce an electron-positron pair = %4.2e m", lambda);

// Result
// Wavelength of a photon that can produce an electron-positron pair = 1.22e-12 m 

