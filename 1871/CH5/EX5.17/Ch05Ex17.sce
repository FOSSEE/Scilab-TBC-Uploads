// Scilab code Ex5.17: Pg:226 (2008)
clc;clear;
n = 2;    // Second order diffraction
theta = 10;    // Angle of diffraction, degree
d_Lambda = 5e-009;    // Wavelength of second spectral line of light on the grating in the second order, cm
d_theta = (3/3600)*(%pi/180);    // Differential angle of diffraction, rad
Lambda = sind(theta)*d_Lambda/(cosd(theta)*d_theta);    // Wavelength of spectral line, cm
N = (Lambda/d_Lambda)*1/n;    // Number of lines on the grating
w_min = N*n*Lambda/sind(theta);    // Minimum grating width of diffraction grating required to resolve the spectral lines, cm
printf("\nThe wavelength of first spectral line = %4.0f angstrom", Lambda/1e-008);
printf("\nThe wavelength of Second spectral line = %6.1f angstrom", (Lambda+d_Lambda)/1e-008);
printf("\nThe minimum grating width of diffraction grating required to resolve the spectral lines = %3.1f cm", w_min);

// Result 
// The wavelength of first spectral line = 6062 angstrom
// The wavelength of Second spectral line = 6062.2 angstrom
// The minimum grating width of diffraction grating required to resolve the spectral lines = 4.2 cm 
// The answer is given wrong in the textbook