// Scilab Code Ex1.20:: Page-2.16 (2009)
clc; clear;
y1 = 40;    // Distance between biprism from the slit, cm
D = 160;    // Distance between slit and the screen, cm
mu = 1.52;  // Refractive index of material of the prism
lambda = 5893e-008; // Wavelength of light used, cm
b = 0.01;   // Fringe width, cm
// As b = lambda*D/d, solving for d
d = lambda*D/b;     // Distance between virtual sources, cm
// But d = 2*y1*(mu-1)*alpha, solving for alpha
alpha = d/(2*y1*(mu-1))*180/%pi;    // Angle of biprism, degrees
theta = 180-2*alpha;    // Angle of vertex of biprism, degrees

printf("\nThe angle of vertex of biprism = %5.1f degree", theta);

// Result 
// The angle of vertex of biprism = 177.4 degree 
