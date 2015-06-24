// Scilab Code Ex3.15: Page-113 (2013)
clc; clear
e = 1.6e-019;    // Energy equivalent of 1 eV, J
c = 2.998e+008;    // Speed of light in vacuum, m/s
h = 6.626e-034;    // Planck's constant, Js
V0 = 35e+003;    // Electron acceleration voltage, V
lambda_min = h*c/(e*V0);    // Duane-Hunt rule for wavelength, m
printf("\nThe minimum wavelength of X-rays = %4.2e m", lambda_min);

// Result
// The minimum wavelength of X-rays = 3.55e-011 m 