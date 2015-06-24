// Scilab Code Ex9.2.14: Page-419(2008)
clc; clear;
h = 6.63e-034;    // Planck's constant, Js
c = 3e+008;    // Speed of light, m/s
lambda = 10e-012;    // Wavelength of incident X-rays, m
lambda_c = 2.426e-012;    // Compton wavelength for the electron, m
phi = 45;    // Angle of scattering of X-rays, degree
lambda_prime = lambda + lambda_c*(1 - cosd(phi));    // Wavelength of scattered X-rays, m
// For maximum wavelength
phi = 180;    // Angle for maximum scattering, degree
lambda_prime_max = lambda + lambda_c*(1 - cosd(phi)) ;    // Maximum wavelength present in the scattered X-rays, m
KE_max = h*c*(1/lambda-1/lambda_prime_max);    // Maximum kinetic energy of the recoil electrons, J
printf("\nThe wavelength of scattered X-rays = %5.2e m", lambda_prime);
printf("\nThe maximum wavelength present in the scattered X-rays = %6.3f pm", lambda_prime_max/1e-012);
printf("\nThe maximum kinetic energy of the recoil electrons = %5.3e J", KE_max);

// Result
// The wavelength of scattered X-rays = 1.07e-011 m
// The maximum wavelength present in the scattered X-rays = 14.852 pm
// The maximum kinetic energy of the recoil electrons = 6.498e-015 J 