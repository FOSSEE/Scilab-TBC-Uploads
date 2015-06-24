// Scilab Code Ex8.2: Page-398 (2008)
clc; clear;
lambda = 632.8e-009;     // Wavelength of the lase beam, cm
E_2P = 15.2e-019;    // Energy of 2P level, J
h = 6.626e-034;     // Planck's constant, Js
c = 3e+008;     // Speed of light, m/s
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
E_Pump = E_2P + h*c/lambda; // The required pumping energy, J
printf("\nThe pumping energy required for He Ne laser transition = %5.2f eV", E_Pump/e);

// Result 
// The pumping energy required for He Ne laser transition = 11.46 eV 
