// Ex16_1 Page:306 (2014)
clc;clear;
n1 = 1.43;    // Refractive index of core
n2 = 1.40;    // Refractive index of cladding
theta_c = acosd(n2/n1);    // Propagation angle, degree
NA = sqrt(n1^2 - n2^2);    // Numerical aperture
theta_a = asind(NA);    // Acceptance angle, degree
printf("\nPropagation angle = %4.1f degree", theta_c);
printf("\nNumerical aperture = %6.4f", NA);
printf("\nAcceptance angle = %5.2f degree", 2*theta_a);

// Result
// Propagation angle = 11.8 degree
// Numerical aperture = 0.2914
// Acceptance angle = 33.88 degree 