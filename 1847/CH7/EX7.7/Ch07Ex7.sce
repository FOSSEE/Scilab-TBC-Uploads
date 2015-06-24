// Scilab Code Ex7.7:: Page-7.10 (2009)
clc; clear;
NA = 0.4;      // Numerical aperture of the optical fibre
n0 = 1;         // Refractive index of fibre in air
theta_a = asind(NA/n0);  // Acceptance angle for meridional rays, degrees
theta = 100;    // Direction through which the skew rays are bent at each reflection, degrees
r = theta/2;    // Angle of reflection, degrees
theta_as = asind(NA/(cosd(r)*n0));  // Acceptance angle for skew rays, degrees

printf("\nAcceptance angle for meridional rays = %4.1f degrees", theta_a);
printf("\nAcceptance angle for skew rays = %4.1f degrees", theta_as);

// Result 
// Acceptance angle for meridional rays = 23.6 degrees
// Acceptance angle for skew rays = 38.5 degrees 
