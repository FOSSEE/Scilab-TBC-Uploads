// Scilab Code Ex3d.2: Page-205 (2008)
clc; clear;
f = 20;    // Focal length of the lens, cm
a = 0.06;    // Slit width, cm
n = 2;    // Order of diffraction
lambda = 6e-005;    // Wavelength of light used, cm
x = 2*lambda*f/a;    // Separation between the second minima on either side of the central maximum, cm
printf("\nThe separation between the second minimum an central maximum = %4.2f cm", x);

// Result
// The separation between the second minimum an central maximum = 0.04 cm 