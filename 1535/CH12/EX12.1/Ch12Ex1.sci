// Scilab Code Ex12.1: Parameters of step index fibre : Page-271 (2010)
n1 = 1.43;    // Refractive index of fibre core
n2 = 1.4;    // Refractive index of fibre cladding
// As sin (alpha_c) = n2/n1, solving for alpha_c
alpha_c = asind(n2/n1);    // Critical angle for optical fibre, degrees
// AS cos(theta_c) = n2/n1, solving for theta_c
theta_c = acosd(n2/n1);    // Critical propagation angle for optical fibre, degrees
NA = sqrt(n1^2 - n2^2);    // Numerical aperture for optical fibre
printf("\nThe critical angle for optical fibre = %5.2f degrees", alpha_c);
printf("\nThe critical propagation angle for optical fibre = %5.2f degrees", theta_c);
printf("\nNumerical aperture for optical fibre = %4.2f", NA);

// Result
// The critical angle for optical fibre = 78.24 degrees
// The critical propagation angle for optical fibre = 11.76 degrees
// Numerical aperture for optical fibre = 0.29 