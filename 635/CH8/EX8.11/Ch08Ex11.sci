// Scilab code Ex8.11: Determining the wavelength of diffracted X-rays Page 262 (2010)
d = 2.814e-010;    // Interplanar spacing of rocksalt crystal, m
theta = 9;    // Bragg's angle, degree
// 2*d*sin(theta) = n*lambda    **Bragg's law, n is the order of diffraction
// Solving for lambda, we have
// lambda = 2*d*sin(theta)/n;
printf("\nThe first four wavelengths of diffracted beam are:");
for n = 1:1:5    // For diffraction order from 1 to 5
    lambda = 2*d*sind(theta)/n;     // Wavelength of X-rays, m
    if lambda >= 0.2e-010 & lambda <= 1.0e-010 then
        printf("\nLambda%d = %6.4e angstrom", n, lambda/1D-10);
    end
end
// Result
// The first four wavelengths of diffracted beam are:
// Lambda1 = 8.8041e-001 angstrom
// Lambda2 = 4.4021e-001 angstrom
// Lambda3 = 2.9347e-001 angstrom
// Lambda4 = 2.2010e-001 angstrom