// Scilab Code Ex5.16: Page-292 (2008)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
e = 1.602e-019;    // Energy equivalent of 1 eV, J
lambda = 0.40e-010; // de-Broglie wavelength associated with the moving electron, m
m = 9.11e-031;    // Rest mass of an electron, kg
V = (h/lambda)^2/(2*m*e);    // Voltage applied to the electron microscope to produce the required wavelength, volt
printf("\nThe voltage applied to the electron microscope to produce the required de-Broglie wavelength = %5.1f volt", V);

// Result
// The voltage applied to the electron microscope to produce the required de-Broglie wavelength = 938.4 volt 