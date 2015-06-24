// Scilab Code Ex3b.4: Page-164 (2008)
clc; clear;
i = 60;    // Angle of incidence, degree
i_p = i;    // Angle of polarization, degree
mu = tand(i_p);    // Refractive index of the medium
r = 90 - i;    // Angle of refraction, degree
printf("\nThe refractive index of transparent medium = %5.3f", mu);
printf("\nThe angle of refraction, r = %d degree", r);
printf("\nThe reflected and transmitted components are at right angles to each other.");

// Result
// The refractive index of transparent medium = 1.732
// The angle of refraction, r = 30 degree
// The reflected and transmitted components are at right angles to each other.