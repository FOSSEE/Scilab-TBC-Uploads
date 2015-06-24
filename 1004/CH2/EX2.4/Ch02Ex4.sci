// Scilab Code Ex2.4 Longest wavelength of incident radiation: Pg:45 (2008)
h = 6.624e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light, m/s
e = 1.6e-019;    // Energy equivalent of 1 eV, joule/eV
phi = 6*e;       // Work function of metal, joule
f0 = phi/h;    // Threshold frequency for metal surface, Hz
L0 = c/f0;     // Threshold (Longest) wavelength for metal, m
printf("\nThe longest wavelength of incident radiation = %4d angstrom", L0/1e-010);
// Result 
// The longest wavelength of incident radiation = 2070 angstrom 