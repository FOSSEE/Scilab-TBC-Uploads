// Scilab Code EX3.40:: Page-3.56 (2009)
clc;clear;
lambda = 5500e-008;  // Wavelength of most sensitive color to an eye, cm
a = 400;    // Aperture of the telescope, cm
D = 3.8e+010;   // Distance of the moon from the earth, cm
d_theta = 1.22*lambda/a;    // Limit of resolution of telescope, radians
// As d_theta = x/D, solving for x
x = d_theta*D;  // Linear separation of two points on the moon, cm

printf("\nThe linear separation of two points on the moon = %5.2f m", x/1e+002);

// Result
// The linear separation of two points on the moon = 63.74 m 
