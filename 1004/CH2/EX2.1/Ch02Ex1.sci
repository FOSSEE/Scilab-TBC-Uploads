// Scilab Code Ex2.1 Threshold wavelength of tungsten: Pg:4 (2008)
phi = 4.5*1.6e-019;    // Work function for tungesten, joule
h = 6.6e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light, m/s
// As phi = h*c/L0, solving for L0
L0 = h*c/phi;    // Threshold wavelength of tungesten, m
printf("\nThe threshold wavelength of tungesten = %4d angstrom", L0/1e-010);
// Result 
// The threshold wavelength of tungesten = 2750 angstrom 