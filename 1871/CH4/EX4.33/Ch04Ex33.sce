// Scilab code Ex4.33: : Pg:182 (2008)
clc;clear;
Lambda = 5.46e-05;    // Wavelength of light, cm
n = 12;    // Number of fringes
d = 0.40;    // Spacing between 12 fringes, cm
omega = d/n;    // Fringe width, cm
// Since fringe width in air wedge for normal incidence is given by omega = Lambda/2*theta. On solving for theta, we have
// As omega = Lambda/(2*theta), solving for theta
theta = Lambda/(2*omega);    // Angle of the wedge, radian
l = 3;    // Length of the plate, cm
t = theta*l;    // Thickness of the foil, cm
mu = 1.33;    // Refractive index of water
omega_prime = Lambda/(2*mu*theta);    // Fringe width if water is introduced in the wedge space in Newton's ring experiment, cm
printf("\nThe angle of the wedge = %3.1e radian", theta);
printf("\nThe thickness of the foil = %4.2e cm", t);
printf("\nThe fringe width if water is introduced in the wedge space = %5.3f cm", omega_prime);

// Result 
// The angle of the wedge = 8.2e-004 radian
// The thickness of the foil = 2.46e-003 cm
// The fringe width if water is introduced in the wedge space = 0.025 cm 