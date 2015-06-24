// Scilab Code Ex5.5: Page:298 (2011) 
clc;clear;
D = 1;....// Distance between slits and the screen, m
mu = 1.5;    // Refractive index of the material of biprism
a = 0.5;....// The distance between the slit and the biprism, m 
W = 1.35e-004;....// Width of the fringes, m
alpha = (180-179)/2*%pi/180;    // Acute angle of biprism, radian
lambda = 2*a*(mu-1)*alpha*W/D;    // Wavelength of light used, m
printf("\nThe wavelength of light used = %4d angstrom", lambda/1e-10);

// Result
// The wavelength of light used = 5890 angstrom 
