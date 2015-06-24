// Scilab code Ex3.16 : Pg:121 (2008)
clc;clear;
R = 20;    // Radius of curvature of the spherical surface, cm
mu = 1.5;    // Refractive index of the material
h = 5;    // First height of the incident ray from the principal axis, cm
delta_f_h = h^2/(2*mu*(mu - 1)*R);    // Spherical aberration of the spherical surface, cm
printf("\nFor h = %d, the Spherical aberration of the spherical surface = %4.2f cm", h, delta_f_h);
h = 7;  // Second height of the incident ray from the principal axis, cm
delta_f_h = h^2/(2*mu*(mu - 1)*R);    // Spherical aberration of the spherical surface, cm
printf("\nFor h = %d, the Spherical aberration of the spherical surface = %4.2f cm", h, delta_f_h);

// Result 
// For h = 5, the Spherical aberration of the spherical surface = 0.83 cm
// For h = 7, the Spherical aberration of the spherical surface = 1.63 cm 