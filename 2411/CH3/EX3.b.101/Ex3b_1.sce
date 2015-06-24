// Scilab Code Ex3b.1: Page-163 (2008)
clc; clear;
mu = 1.5;    // Refractive indexof glass
i_p = atand(mu);    // Angle of polarization from Brewster's law, degree
r = 90 - i_p;    // Angale of refraction, degree
printf("\nThe Brewster angle for glass = %4.1f degree", i_p);
printf("\nThe angle of refraction for glass = %4.1f degree", r);

// Result
// The Brewster angle for glass = 56.3 degree
// The angle of refraction for glass = 33.7 degree 