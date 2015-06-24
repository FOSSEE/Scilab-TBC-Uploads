// Scilab Code Ex7.11: Page-380 (2008)
clc; clear;
e = 1.6e-019;    // The energy equivalent of 1 eV, J
c = 3e+008;    // Speed of light in vacuum, m/s
V = [30 44 50 200];    // Operating voltages of X ray, kV
lambda_min = [0.414 0.284 0.248 0.062];    // Minimum wavelengths of emitted continuous X rays, angstrom
for i = 1:1:4
    h = e*V(i)*1e+003*lambda_min(i)*1e-010/c;    // Planck's constant, Js
    printf("\nFor V = %d kV and lambda_min = %5.3f angstrom, h = %4.2e Js", V(i), lambda_min(i), h);
end
     
// Result
// For V = 30 kV and lambda_min = 0.414 angstrom, h = 6.62e-034 Js
// For V = 44 kV and lambda_min = 0.284 angstrom, h = 6.66e-034 Js
// For V = 50 kV and lambda_min = 0.248 angstrom, h = 6.61e-034 Js
// For V = 200 kV and lambda_min = 0.062 angstrom, h = 6.61e-034 Js 