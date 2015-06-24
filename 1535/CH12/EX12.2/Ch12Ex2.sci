// Scilab Code Ex12.2: Parameters of optical fibre : Page-271 (2010)
n1 = 1.45;    // Refractive index of fibre core
n2 = 1.4;    // Refractive index of fibre cladding
NA = sqrt(n1^2 - n2^2);    // Numerical aperture for optical fibre
// As sin(theta_a) = sqrt(n1^2 - n2^2), solving for theta_a
theta_a = asind(sqrt(n1^2 - n2^2));    // Half of acceptance angle of optical fibre, degrees
theta_accp = 2*theta_a;    // Acceptance angle of optical fibre
Delta = (n1 - n2)/n1;    // Relative refractive index difference
printf("\nNumerical aperture for optical fibre = %5.3f", NA);
printf("\nThe acceptance angle of optical fibre = %4.1f degrees", theta_accp);
printf("\nRelative refractive index difference = %5.3f", Delta);

// Result
// Numerical aperture for optical fibre = 0.377
// The acceptance angle of optical fibre = 44.4 degrees
// Relative refractive index difference = 0.034 