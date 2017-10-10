// Ex2_3 Page:31 (2014)
clc; clear;
h = 6.626e-034; // Planck's constant, Js
c = 3e+08;  // Speed of light, m/s
e = 1.6e-019;   // Energy equivalent of 1 eV, J
w0 = 4.2;  // Work function of aluminium, eV
lambda = 2000e-10;   // Wavelength of incident light, m
lambda0 = h*c/(w0*e);  // The cut-off wavelength for aluminium, m
E = h*c/(lambda*e); // Energy of 2000 angstrom photon, eV
KE = E - w0;    // Kinetic energy of fastest electron, eV
printf("\nThe cut-off wavelength for aluminium = %4d angstrom", lambda0/1e-010);
printf("\nThe stopping potential = %4.2f V", KE);

// Result
// The cut-off wavelength for aluminium = 2958 angstrom
// The stopping potential = 2.01 V 

