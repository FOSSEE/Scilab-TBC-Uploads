// Scilab Code Ex5.13: Page-289 (2008)
clc; clear;
c = 3e+008;    // Speed of light, m/s
e = 1.602e-019;    // Energy equivalent of 1 eV, J
h = 6.6e-034;    // Planck's constant, Js
m0 = 9.1e-031;    // Rest mass of an electron, kg
alpha = [90 60 45 180];    // Different scattering angle for X-ray photon, degrees
d_lambda = zeros(4);
for i = 1:1:4
    d_lambda(i) = h/(m0*c*1e-010)*(1-cosd(alpha(i)));    // Wavelength shift after collision, angstrom
    printf("\nFor alpha = %d degree, d_lambda = %6.4f angstrom", alpha(i), d_lambda(i));
end
lambda = 0.2;    // Given wavelength of incident X-ray photon, angstrom
lambda_prime = lambda + d_lambda(3);    // Wavelength of the scattered photon at 45 degree, angstrom
printf("\nThe wavelength of the photon scattered at 45 degree = %5.3f angstrom", lambda_prime);
lambda_prime = lambda + d_lambda(4);    // Maximum wavelength of the photon scattered at 180 degree, angstrom
KE_max = h*c*1e+010*(1/lambda - 1/lambda_prime);    // Maximum kinetic energy of the recoil electron, J
printf("\nThe maximum kinetic energy of the recoil electron = %4.2e J", KE_max);

// Result
// For alpha = 90 degree, d_lambda = 0.0242 angstrom
// For alpha = 60 degree, d_lambda = 0.0121 angstrom
// For alpha = 45 degree, d_lambda = 0.0071 angstrom
// For alpha = 180 degree, d_lambda = 0.0484 angstrom
// The wavelength of the photon scattered at 45 degree = 0.207 angstrom
// The maximum kinetic energy of the recoil electron = 1.93e-015 J 