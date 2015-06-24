// Scilab code Ex5.25: Pg:232 (2008)
clc;clear;
Lambda = 5800e-08;    // Mean wavelength of light, cm
a = 20;    // Diameter of the objective of a telescope, cm
theta = 1.22*Lambda/a;    // The smallest angular separation resolvable by a telescope objective of diameter a, radian
l = 4e+05;    // Distance of moon from the earth, km
x = theta * l;    // Distance between two objects on the moon, km
theta = 1.22*Lambda/a;    // Angular resolution of the eye
theta_prime = 1.5*%pi/180*1/60;    // Angular resolution of the telescope, degree
MP = theta_prime/theta;    // Magnifying power of a telescope
printf("\nThe distance between two objects on the moon = %3.1f km", x);
printf("\nThe magnifying power of the telescope = %3d ", MP);

// Result 
// The distance between two objects on the moon = 1.4 km
// The magnifying power of the telescope = 123