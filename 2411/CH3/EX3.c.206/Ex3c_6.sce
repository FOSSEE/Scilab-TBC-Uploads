// Scilab Code Ex3c.6: Page-185 (2008)
clc; clear;
D = 100;    // Distance between the source and the slit, cm
lambda = 5893e-008;    // Wavelength of light, cm
d1 = 4.05e-001;    // Distance between the images of the two slits in one position, cm
d2 = 2.90e-001;    // Distance between the images of the two slits in second position, cm
d = sqrt(d1*d2);   // Separation between the two slits, cm
bita = lambda*D/d;    // Fringe width, cm
printf("\nThe distance between consecutive interference bands = %6.4f cm", bita);

// Result
// The distance between consecutive interference bands = 0.0172 cm