// Scilab Code Ex9.2.9: Page-417 (2008)
clc; clear;
h = 6.63e-034;    // Planck's constant, Js
c = 3e+008;    // Speed of light in free space, m/s
e = 1.6e-019;    // Energy equivalent of 1 eV, J
V = 50000;    // Accelerating potential, V
lambda_min = h*c/(e*V);    // The shortest wavelength present in the radiation from an X-ray machine, m
printf("\nThe shortest wavelength present in the radiation from an X-ray machine = %6.4f nm", lambda_min/1e-009);

// Result 
// The shortest wavelength present in the radiation from an X-ray machine = 0.0249 nm 