// Scilab code Ex12.1: Pg:463 (2008)
clc;clear;
n1 = 1.5;    // Core index of an optical fibre
n0 = 1;    // Refractive index of air
delta = 0.0005;    // Intermodal dispersion factor for the fibre
// Since delta = (n1-n2)/n1, solving for n2
n2 = n1 - n1*delta;    // Refractive index of cladding
//As sind(phi_c) = n2/n1, solving for phi_c, we have
phi_c = asind(n2/n1);    // Critical internal reflection angle, degree
// As sind(theta_0) = sqrt(n1^2-n2^2)/n0, solving for theta_0
theta_0 = asind(sqrt(n1^2-n2^2)/n0);    // External critical acceptance angle, degree
NA = n1*sqrt(2*delta);    // Numerical aperture
printf("\nThe refractive index of cladding = %7.5f ", n2);
printf("\nThe critical internal reflection angle = %4.1f degree", phi_c);
printf("\nThe external critical acceptance angle = %4.2f degree", theta_0);
printf("\nThe numerical aperture = %6.4f ", NA);

// Result 
// The refractive index of cladding = 1.49925 
// The critical internal reflection angle = 88.2 degree
// The external critical acceptance angle = 2.72 degree
// The numerical aperture = 0.0474  