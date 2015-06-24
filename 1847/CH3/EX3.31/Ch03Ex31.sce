// Scilab Code Ex3.31:: Page-3.49 (2009)
clc; clear;
theta1 = 18;        // Direction at which first spectral line appears, degrees
theta2 = 18+5/(60*60);  // Direction at which second spectral line appears, degrees
d_theta = (theta2-theta1)*%pi/180;       // Angular separation of two spectral lines, radians
d_lambda = 50e-010;      // Linear separation of two spectral lines just seen as separate, cm
DP = d_theta/d_lambda;      // Dispersive power of grating
n = 1;      // Order of diffraction
// As dispersive power of grating d_theta/d_lambda = DP = n/((a_plus_b)*cosd(theta1)), solving for a_plus_b
a_plus_b = n/(DP*cosd(theta1));     // Grating element, cm
// But a_plus_b*sind(theta1)=n*lambda1, solving for lambda1
lambda1 = a_plus_b*sind(theta1)/n;      // Wavelength of first spectral line, cm
lambda2 = lambda1+d_lambda/1e-002;             // Wavelength of second spectral line, cm
// As resolving power of grating, lambda/d_lambda = n*N, solving for N
N = lambda1/(d_lambda*n);    // No. of lines required per cm on grating
w = N*a_plus_b;     // Minimum grating width required to resolve two wavelengths, cm

printf("\nThe wavelength of first spectral line = %4.0f angstrom", lambda1/1e-008);
printf("\nThe wavelength of second spectral line = %4.0f angstrom", lambda2/1e-008);
printf("\nThe minimum grating width required to resolve two wavelengths = %3.1f cm", w);

// Result 
// The wavelength of first spectral line = 6702 angstrom
// The wavelength of second spectral line = 6752 angstrom
// The minimum grating width required to resolve two wavelengths = 2.9 cm 
