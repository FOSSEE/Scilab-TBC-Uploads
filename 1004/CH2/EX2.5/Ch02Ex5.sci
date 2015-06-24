// Scilab Code Ex2.5 Threshold frequency and wavelength: Pg:46 (2008)
h = 6.62e-034;    // Planck's constant, Js
phi = 3.31e-019;       // Work function of metal, joule
c = 3e+08;    // Speed of light, m/s
f0 = phi/h;    // Threshold frequency for metal surface, Hz
L0 = c/f0;     // Threshold wavelength for metal, m
printf("\nThe threshold frequency for metal = %1.0e Hz", f0);
printf("\nThe threshold wavelength for metal = %4d angstrom", round(L0/1e-10));
// Result 
// The threshold frequency for metal = 5e+014 Hz
// The threshold wavelength for metal = 6000 angstrom 