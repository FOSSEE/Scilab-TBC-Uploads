// Scilab Code Ex2.15:: Page-2.14 (2009)
clc; clear;
d1 = 5e-01; // First distance between images of the slit, cm
d2 = 2.25e-01; // Second distance between images of the slit, cm
lambda = 5896e-008; // Wavelength of the light used, cm
D = 120;    // Distance between screen and the slits, cm
d = sqrt(d1*d2);    // Geometric mean of distance between the two slits, cm
b = lambda*D/d;     // Distance between interference bands, cm

printf("\nThe distance between interference bands = %5.3e cm", b);

// Result
// The distance between interference bands = 2.109e-02 cm 
