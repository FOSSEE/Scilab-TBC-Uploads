// Scilab code Ex4.31: : Pg:181 (2008)
clc;clear;
Lambda = 6000e-08;    // Wavelength of light, cm
mu = 1.35;    // Refractive index of thin wedge shaped film
omega = 0.20;    // Fringe width, cm
// As omega = Lambda/(2*mu*theta), solving for theta
theta = Lambda/(2*mu*omega)*180/%pi;    // Angle of the wedge, degree
printf("\nThe angle of the wedge = %6.4f degree", theta);

// Result 
// The angle of the wedge = 0.0064 degree