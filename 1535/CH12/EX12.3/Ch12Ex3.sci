// Scilab Code Ex12.3: Numerical aperture and acceptance angle of step index fibre : Page-271 (2010)
n1 = 1.55;    // Refractive index of fibre core
n2 = 1.53;    // Refractive index of fibre cladding
n0 = 1.3;    // Refractive index of medium
NA = sqrt(n1^2 - n2^2);    // Numerical aperture for optical fibre
// n0*sin(theta_a) = sqrt(n1^2 - n2^2) = NA, solving for theta_a
theta_a = asind(sqrt(n1^2 - n2^2)/n0);    // Half of acceptance angle of optical fibre, degrees
theta_accp = 2*theta_a;    // Acceptance angle of optical fibre
printf("\nNumerical aperture for step index fibre = %5.3f", NA);
printf("\nThe acceptance angle of step index fibre = %2d degrees", theta_accp);

// Result
// Numerical aperture for step index fibre = 0.248
// The acceptance angle of step index fibre = 22 degrees 