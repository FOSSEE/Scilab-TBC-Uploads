// Scilab code Ex6.6: Pg:249 (2008)
clc;clear;
I_m = 1;    // For simplicity assume maximum intensity to be unity, unit
I = I_m/3;    // Final intensity, unit
for theta = 30:15:60
I = I_m*cosd(theta)^2;    // Intensity of the emerging light
printf("\nThe fractional intensity of light transmitted for theta = %2d degree is %3.2f ", theta, I/I_m);
end

// Result 
// The fractional intensity of light transmitted for theta = 30 degree is 0.75 
// The fractional intensity of light transmitted for theta = 45 degree is 0.50 
// The fractional intensity of light transmitted for theta = 60 degree is 0.25  