// Scilab Code Ex2.3 Energy of photoelectrons: Pg:45 (2008)
h = 6.6e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light, m/s
e = 1.6e-019;    // Energy equivalent of 1 joule, joule/eV
L = 1800e-010;    // Wavelength of incident light, m
L0 = 2300e-010;    // Threshold wavelength of tungsten, m
E = h*c*(1/L - 1/L0);    // Energy of photoelectrons emitted from tungsten, joule
printf("\nThe energy of photoelectrons emitted from tungsten = %3.1f eV", E/e);
// Result 
// The energy of photoelectrons emitted from tungsten = 1.5 eV 