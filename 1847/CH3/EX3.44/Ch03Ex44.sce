// Scilab Code EX3.44:: Page-3.57 (2009)
clc;clear;
w = 2;      // Width of the grating, cm
P = 4500;   // Total number of lines on the grating
a_plus_b = w/P; // Grating element, cm
lambda1 = 5890e-008;  // Wavelength of sodium D1 line, cm
lambda2 = 5896e-008;  // Wavelength of sodium D2 line, cm
lambda = (lambda1+lambda2)/2;  // Mean wavelength of light used, cm
d_lambda=lambda2-lambda1;   // Difference in wavelengths of D-lines of sodium, cm
n = 2;  // Order of diffraction
// As a_plus_b*sind(theta)=n*lambda, solving for theta
theta = asind(n*lambda/a_plus_b);   // Angle of diffraction, degrees
DP = n/(a_plus_b*cosd(theta));      // Dispersive power of grating
d_theta = DP*d_lambda*180/%pi;  // Angular separation between D-lines, degrees
RP = lambda/d_lambda;   // Required resolving power of grating for sodium lines
N = 2.54/a_plus_b;  // No. of lines per cm on grating, lines/cm
RP_cal = n*N;       // Calculated resolving power of grating  

printf("\nThe angle of diffraction for maxima in second order = %6.4f degrees", d_theta);
printf("\nAs %5.3e > %3d, D-lines can be resolved.", RP_cal, RP);

// Result
// The angle of diffraction for maxima in second order = 0.0160 degrees
// As 1.143e+04 > 982, D-lines can be resolved. 
