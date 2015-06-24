// Scilab Code Ex2.18:: Page-2.15 (2009)
clc; clear;
mu = 1.5;   // Refractive index of biprism
lambda = 6600e-008;    // Wavelength of light used, cm
y1 = 40;    // Distance of biprism from the source, cm
y2 = 175;    // Distance of biprism from the screen, cm
D = y1 + y2;    // Distance between slits and the screen, cm
b = 0.04;  // Fringe width of the interfernce pattern due to biprism, cm
// As d = 2*(mu-1)*alpha*y1, solving for alpha
alpha = lambda*D/(b*2*(mu-1)*y1)    // Acute angle of the biprism, radian
theta = (%pi-2*alpha);  // Vertex angle of the biprism, radian

printf("\nThe vertex angle of the biprism = %6.2f degrees", theta*180/%pi);

// Result
// The vertex angle of the biprism = 178.98 degrees 
