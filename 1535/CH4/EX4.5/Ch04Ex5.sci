// Scilab Code Ex4.5 : Page-92 (2010)
N = 4000e+02;    // Number of lines per m on grating, per m
// For Blue Line
lambda = 450e-009;    // Wavelength of blue light, m
n = 3;    // Order of diffraction spectrum
// We have sin(theta) = n*N*lambda, solving for sin(theta)
sin_theta_3 = n*N*lambda;    // Sine of angle at third order diffraction 
// For Red Line
lambda = 700e-009;    // Wavelength of blue light, m
n = 2;    // Order of diffraction spectrum
// We have sin(theta) = n*N*lambda, solving for sin(theta)
sin_theta_2 = n*N*lambda;    // Sine of angle at second order diffraction
// Check for overlapping
if abs(sin_theta_3 - sin_theta_2) < 0.05 then
    printf("\nThe two orders overlap.");
else
    printf("\nThe two orders do not overlap.");
end

// Result 
// The two orders overlap. 