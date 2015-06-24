// Scilab code Ex6.1: Pg:247 (2008)
clc;clear;
i_p = 60;    // Angle of polarization, degree
mu = tand(i_p);    // Refractive index of the material
r = 90-i_p;    // Angle of refraction, degree
printf("\nThe refractive index of the material = %5.3f ", mu);
printf("\nThe angle of refraction = %2d degree", r);

// Result 
// The refractive index of the material = 1.732 
// The angle of refraction = 30 degree 