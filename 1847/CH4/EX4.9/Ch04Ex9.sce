// Scilab Code Ex4.9:: Page-4.9 (2009)
clc; clear;
theta = 30;     // Angle which the plane of vibration makes with the incident beam, degrees
// As intensity of ordinary and extraordinary ray are
// E_E = A^2*cosd(theta)^2 and E_O = A^2*sind(theta)^2, solving for E_E/E_O
EE_ratio_EO = cotd(30)^2;    // Ratio of ordinary and extraordinary ray intensities 

printf("\nThe ratio of ordinary to extraordinary ray intensities = %d", EE_ratio_EO);

// Result 
// The ratio of ordinary to extraordinary ray intensities = 3 
 
