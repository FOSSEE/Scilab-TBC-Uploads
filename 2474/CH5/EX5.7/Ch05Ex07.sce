// Scilab code Ex5.7: Pg.209 (2008)
clc; clear;
e = 1.6e-19;    // Charge on electron, C
h_cross = 1.055e-034/e;    // Reduced plank's constant, eV-s
c = 3e+17;    // Velocity of light, nm/s
E = 0.511e+06;    // Energy of electron, eV
L = 0.1;    // Length of box, nm
E_z = (h_cross*c)^2/(2*E*L^2);    // Zero point energy of electron, eV
printf("\nThe zero point energy of the electron = %4.2f eV", E_z);

// Result
// The zero point energy of the electron = 3.83 eV 