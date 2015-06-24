// Scilab Code Ex3.16: Page-116 (2013)
clc; clear
c = 2.998e+008;    // Speed of light in vacuum, m/s
h = 6.626e-034;    // Planck's constant, Js
m_e = 9.11e-031;    // Rest mass of an electron, kg
lambda = 0.050;    // Wavelength of the X-ray, nm
theta = 180;    // The angle at which the recoil electron Ke becomes the largest, degree
E_x_ray = 1.240e+003/lambda;    // Energy of the X-ray, eV
lambda_prime = lambda + (1-cosd(theta))*h/(m_e*c*1e-009);    // The largest wavelength of the scattered photon, nm
E_prime_x_ray = 1.240e+003/lambda_prime;    // Energy of the scattered photon, eV
K = (E_x_ray - E_prime_x_ray)/1e+003;    // Kinetic energy of the most energetic recoil electron, keV
if (E_prime_x_ray < E_x_ray) then
    printf("\nThe X-ray is Compton-scattered by the electron.");
else
    printf("\nThe X-ray is not Compton-scattered by the electron.");
end
printf("\nThe largest wavelength of the scattered photon = %5.3f nm", lambda_prime);
printf("\nThe kinetic energy of the most energetic recoil electron = %3.1f keV", K);
printf("\nThe angle at which the recoil electron energy is the largest = %d degrees", theta);

// Result
// The X-ray is Compton-scattered by the electron.
// The largest wavelength of the scattered photon = 0.055 nm
// The kinetic energy of the most energetic recoil electron = 2.2 keV
// The angle at which the recoil electron energy is the largest = 180 degrees 