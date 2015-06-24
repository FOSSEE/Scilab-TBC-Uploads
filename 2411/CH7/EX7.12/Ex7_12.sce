// Scilab Code Ex7.12: Page-381 (2008)
clc; clear;
e = 1.6e-019;    // The energy equivalent of 1 eV, J
m = 9.11e-031;    // Rest mass of an electron, kg
h = 6.62e-034;    // Planck's constant, Js
c = 3e+008;    // Speed of light in vacuum, m/s
V = [20 100];    // Operating voltages of X ray, kV
for i = 1:1:2
    v = sqrt(2*e*V(i)*1e+003/m);    // Maximum striking speed of the electron, m/s
    lambda_min = c*h/(e*V(i)*1e+003*1e-010);    // Minimum wavelength of emitted continuous X rays, angstrom
    printf("\nFor V = %d kV:", V(i));
    printf("\nThe maximum striking speed of the electron = %5.2e m/s", v);
    printf("\nThe minimum wavelength of emitted continuous X rays = %5.3f angstrom\n", lambda_min);
end
     
// Result
// For V = 20 kV:
// The maximum striking speed of the electron = 8.38e+007 m/s
// The minimum wavelength of emitted continuous X rays = 0.621 angstrom
//
// For V = 100 kV:
// The maximum striking speed of the electron = 1.87e+008 m/s
// The minimum wavelength of emitted continuous X rays = 0.124 angstrom
// There are small variation in the answers as approximations are used in the text
 