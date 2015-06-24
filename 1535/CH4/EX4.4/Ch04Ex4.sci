// Scilab Code Ex4.4 : Page-92 (2010)
lambda = 650e-009;    // Wavelength of light used, m
N = 6000e+02;    // Number of lines per m on grating, per m
theta = 90;    // Angle at which the highest spectral order is obtained, degrees
// We have sin(theta) = n*N*lambda, solving for n
n = sind(theta)/(N*lambda);    // The highest order of spectra with diffraction grating
printf("\nThe highest order of spectra obtained with diffraction grating = %1d", n);

// Result 
// The highest order of spectra obtained with diffraction grating = 2