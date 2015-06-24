// Scilab Code Ex8.1: Page-397 (2008)
clc; clear;
lambda = 6000e-008;     // Wavelength of the lase beam, cm
P = 10e-003;    // Power of the laser beam, W
theta = 1.5e-004;   // Angular spread of laser beam, rad
f = 10;    // Focal length of the lens, cm
r = f*theta;    // Radius of the image, cm
rho = P/(%pi*r^2*1e+003);  // Power density of the image, kW/Sq.cm
L_w = lambda/(theta/10);     // Coherence width, mm
printf("\nThe radius of the image = %3.1e cm", r);
printf("\nThe power density of the image = %3.1f kW/Sq.cm", rho);
printf("\nThe coherence width = %d mm", L_w);

// Result 
// The radius of the image = 1.5e-03 cm
// The power density of the image = 1.4 kW/Sq.cm
// The coherence width = 4 mm 
