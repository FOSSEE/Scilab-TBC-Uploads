// Scilab code Ex5.27: Pg:233 (2008)
clc;clear;
Lambda = 6000e-08;    //Mean wavelength of light, cm
a = 200;    // Diameter of the objective of a telescope, cm
a_prime = 0.2;    // Aperture of the eye lens, cm
f = 2.54;    // Focal length of eye-piece, cm
theta = 1.22*Lambda/a;    // The smallest angular separation resolvable by a telescope objective of diameter a, radian
theta_prime = 1.22*Lambda/a_prime;    // The smallest angle that can be resolved by the eye where a^' is the aperture of the eye, radian
MP = theta_prime/theta;    // Magnifying power of the telescope
// As MP = F/f, solving for F
F = MP*f;    // The minimum focal length of the objective, cm
printf("\nThe minimum focal length of the objective if the full resolving power of the telescope is to be utilized = %4d cm", F);

// Result 
// The minimum focal length of the objective if the full resolving power of the telescope is to be utilized = 2540 cm 