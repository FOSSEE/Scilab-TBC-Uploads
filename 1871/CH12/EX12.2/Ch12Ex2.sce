// Scilab code Ex12.2: Pg:464 (2008)
clc;clear;
n2 = 1.59;    // Cladding refractive index of an optical fibre
n0 = 1;    // Refractive index when the fiber is in air
NA = 0.20;    // Numerical aperture of fiber
// Since NA = sqrt(n_1^2-n_2^2)/n0, solving for n1
n1 = sqrt(NA^2 + n2^2)/n0;    // Core refractive index of fiber
// In water, n0 = 1.33
n0 = 1.33;    // Refractive index of water
NA = sqrt(n1^2-n2^2)/n0;    // Numerical aperture when the fiber is in water
theta_max = asind(NA);    // Acceptance angle  for the fiber in water, degree
printf("\nThe acceptance angle for the fibre = %3.1f degree", theta_max);

// Result
// The acceptance angle for the fibre = 8.6 degree 