// Scilab Code Ex2.11 Energy of photon : Pg:49 (2008)
h = 6.624e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light, m/s
e = 1.6e-019;    // Energy equivalent of 1 eV, joule/eV
L = 1800e-010;    // Wavelength of incident light, m
L0 = 2300e-010;    // Threshold wavelength of tungsten, m
E = h*c*(1/L - 1/L0);    // Einstein's photoelectric equation for kinetic energy of emitted electrons, J
printf("\nThe energy of electrons emitted from the surface of tungsten = %3.1f eV", E/e);
// Result 
// The energy of electrons emitted from the surface of tungsten = 1.5 eV 