// Scilab Code Ex2.17:: Page-2.15 (2009)
clc; clear;
theta = 178;    // Vertex angle of biprism, degrees
alpha = (180-theta)/2*%pi/180;    // Acute angle of biprism, radian
mu = 1.5;   // Refractive index of biprism
y1 = 20;    // Distance of biprism from the source, cm
y2 = 125;    // Distance of biprism from the screen, cm
D = y1 + y2;    // Distance between slits and the screen, cm
d = 2*(mu-1)*alpha*y1;  // Separation between the slits, cm
b = 0.025;  // Fringe width of the interfernce pattern due to biprism, cm
lambda = b*d/D;    // Wavelength of light used, cm

printf("\nThe wavelength of light used to illuminate slits = %4d angstrom", lambda/1e-08);

// Result
// The wavelength of light used to illuminate slits = 6018 angstrom 
