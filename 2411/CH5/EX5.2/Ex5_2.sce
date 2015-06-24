// Scilab Code Ex5.2: Page-284 (2008)
clc; clear;
lambda_m = 4753e-010;    // Wavelength from the sun at which maximum energy is emitted, m
b = 2.88e-003;    // Wein's constant, m-K
T = b/lambda_m;    // Temperature of the surface of sun
printf("\nThe temperature of the surface of sun = %d K", ceil(T));

// Result
// The temperature of the surface of sun = 6060 K 