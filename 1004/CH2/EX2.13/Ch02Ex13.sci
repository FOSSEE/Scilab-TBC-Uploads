// Scilab Code Ex2.13 Energy of a quantum of light: Pg:50 (2008)
c = 3e+08;    // Speed of light, m/s
e = 1.6e-019;    // Energy equivalent of 1 eV, joule/eV
h= 6.626 * 10^-34;
L = 5.3e-07;    // Wavelength of incident light, m
E = h*c/L;    // Energy of the incident light, J
printf("\nThe energy of incident light = %4.2f eV", E/e);
// Result 
// The energy of incident light = 2.34 eV