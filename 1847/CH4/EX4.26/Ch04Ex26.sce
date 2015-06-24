// Scilab Code Ex4.26:: Page-4.42 (2009)
clc; clear;
lambda = 6600e-010;     // Wavelength of circularly polarized light, cm
mu_R = 1.53914;         // Refractive index of right-handed circularly polarized light
mu_L = 1.53920;         // Refractive index of left-handed circularly polarized light
t = 0.0005;   // Thickness of polarimeter plate, m
theta = %pi/lambda*(mu_L-mu_R)*t;   // Angle of rotation produced by the polarimeter plate, radian

printf("\nThe angle of rotation produced by the polarimeter plate = %4.2f degrees", theta*180/%pi);

// Result 
// The angle of rotation produced by the polarimeter plate = 8.18 degrees 

 
