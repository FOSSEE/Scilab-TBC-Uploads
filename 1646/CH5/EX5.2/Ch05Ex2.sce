// Scilab Code Ex5.2: Page:297 (2011) 
clc;clear;
D = 1.6;....// Distance between the slit and the screen, m
a = 0.4;....// Distance between the slit and the biprism, m
mu = 1.52;....// Refractive index of the material of biprism
W = 1e-004;    // Fringe width, m
lambda = 5.893e-007;....// Wavelength of light used, m
// As W = lambda*D/(2*a(mu-1)*alpha then
alpha = ((lambda*D)/(2*a*(mu-1)*W))*180/%pi;    // Angle of biprism, degrees
printf("\nThe angle of the biprism = %3.1f degrees", alpha);

// Result
// The angle of the biprism = 1.3 degrees 
