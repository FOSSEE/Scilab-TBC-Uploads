// Scilab Code Ex9.2.4: Page-415 (2008)
clc; clear;
lambda1 = 3333e-010;    // First wavelength of the incident light, m
lambda2 = 2400e-010;    // Second wavelength of the incident light, m
c = 3e+008;    // Speed of light in free space, m/s
e = 1.6e-019;    // Energy equivalent of 1 eV, J
E1 = 0.6;    // Kinetic energy of the emitted photoelectrons for the first wavelength, eV
E2 = 2.04;     // Kinetic energy of the emitted photoelectrons for the second wavelength, eV
h = (E2 - E1)*lambda1*lambda2*e/(c*(lambda1 - lambda2));    // Planck's constant, Js
W0 = (E2*lambda2 - E1*lambda1)/(lambda1 - lambda2);    // Work function of the metal, eV
printf("\nThe value of Planck constant = %3.1e Js", h);
printf("\nThe work function of the metal = %3.1f eV", W0);

// Result 
// The value of Planck constant = 6.6e-034 Js
// The work function of the metal = 3.1 eV 