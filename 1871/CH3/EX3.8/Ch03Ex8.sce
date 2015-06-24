// Scilab code Ex3.8 : Pg:108 (2008)
clc;clear;
mu_v = 1.5230;    // Refractive index of violet color
mu_r = 1.5145;    // Refractive index of red color
R1 = 40;    // Radius of curvature of first curvature of lens, cm
R2 = -10;    // Radius of curvature of second curvature of lens, cm
// As 1/f_r = (mu_r - 1)*(1/R1 - 1/R2), solving for f_r
f_r = 1/((mu_r-1)*(1/R1 - 1/R2));    // Focal length for red color, cm
f_v = 1/((mu_v-1)*(1/R1 - 1/R2));    // Focal length for violet color, cm
CA = f_r - f_v;    // The longitudinal chromatic abberation, cm
printf("\nThe longitudinal chromatic abberation for the object at infinity = %5.3f cm", CA);

// Result 
// The longitudinal chromatic abberation for the object at infinity = 0.253 cm 