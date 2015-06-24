// Scilab Code Ex2.30 Excitation potential for mercury: Pg:65 (2008)
e = 1.6e-019;    // Energy equivalent of 1 eV, joule/eV
h = 6.624e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light, m/s
L = 2537e-010;    // Wavelength of absorbed line of Hg, m
V = h*c/(e*L);    // Excitation potential for Hg, v
printf("\nThe excitation potential for Hg = %3.1f V", V);
// Result 
// The excitation potential for Hg = 4.9 V 