// Scilab Code Ex2.62:: Page-2.49(2009)
clc; clear;
R = 80;       // Radius of curvature of the convex surface, cm
D5 = 0.192;    // Diameter of 5th dark ring, cm
D25 = 0.555;    // Diameter of 25th dark ring, cm
n = 5;     // Order of interfernce Newton ring
P = 25 - n;
lambda = (D25^2 - D5^2)/(4*P*R);    // Wavelength of light used, cm
printf("\nThe wavelength of light used = %5.3e cm", lambda);

// Result
// The wavelength of light used = 4.237e-005 cm 
// The expression for lambda is given wrong in the textbook but solved correctly
