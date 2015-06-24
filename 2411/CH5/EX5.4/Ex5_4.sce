// Scilab Code Ex5.4: Page-285 (2008)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
c = 3e+008;    // Speed of light, m/s
lambda = 2300e-010;    // Thereshold wavelength for tungsten, m
phi = h*c/lambda;    // Work function for tungsten, J
lambda = 1800e-010;    // Wavelength of incident radiation, m
E = h*c/lambda;    // Energy of the incidnt radiation, J
KE = E - phi;    // Kinetic energy of the ejected photoelectrons, J
printf("\nThe kinetic energy of the ejected photoelectrons = %3.1f eV", KE/1.6e-019);

// Result
// The kinetic energy of the ejected photoelectrons = 1.5 eV 