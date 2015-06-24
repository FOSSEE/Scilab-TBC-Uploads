// Scilab Code Ex11.2: Page-250 (2010)
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
h = 6.626e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light in free space, m/s
lambda = 690e-009;    // Wavelength of laser light, m
E_lower = 30.5;    // Energy of lower state, eV
E = h*c/(lambda*e);    // Energy of the laser light, eV
E_ex = E_lower + E;    // Energy of excited state of laser system, eV
printf("\nThe energy of excited state of laser system = %4.1f eV", E_ex);

// Result
// The energy of excited state of laser system = 32.3 eV
