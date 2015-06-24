// Scilab Code Ex15.5 Energy required to stimulate the emission of Na d-lines: Page-497 (2010)
e = 1.6e-019;    // Charge on an electron, C
h = 6.626e-034;    // Planck's constant, Js
c = 3.0e+08;    // Speed of light in vacuum, m/s
lambda_mean = 5893e-010;    // Wavelength of incident light, m
delta_E = h*c/(lambda_mean*e);    // The energy of the electron which must be transferred to the atoms of Na 
printf("\nThe energy which must be transferred to stimulate the emission of Na d-lines = %5.3f eV", delta_E);
// Result 
// The energy which must be transferred to stimulate the emission of Na d-lines = 2.108 eV