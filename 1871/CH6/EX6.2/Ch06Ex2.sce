// Scilab code Ex6.2: Pg:247 (2008)
clc;clear;
mu = 1.50;    // Refractive index of the material
// Since mu = tan i_p, solving for i_p 
i_p = atand(mu);    // Angle of polarization, degree
r = 90-i_p;    // Angle of refraction, degree
printf("\nThe angle of polarization = %4.1f degree", i_p);
printf("\nThe angle of refraction = %4.1f degree", r);

// Result 
// The angle of polarization = 56.3 degree
// The angle of refraction = 33.7 degree