// Scilab Code Ex2.8 Maximum kinetic energy and stopping potential of ejected electrons: Pg:47 (2008)
h = 6.624e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light, m/s
e = 1.6e-019;    // Energy equivalent of 1 eV, joule/eV
phi_0 = 1.51*e;   // Work function of the metal surface, J 
L = 4000e-010;    // Wavelength of incident light, m
f = c/L;    // Frequency of incident light, Hz
U = h*f - phi_0;    // Maximum kinetic energy of ejected electrons, J
V = U/e;    // Stopping potential for ejected electrons, volt
printf("\nThe maximum energy of ejected electrons = %5.3f eV", U/e);
printf("\nThe stopping potential of ejected electrons = %5.3f V", V);
// Result 
// The maximum energy of ejected electrons = 1.595 eV
// The stopping potential of ejected electrons = 1.595 V 
