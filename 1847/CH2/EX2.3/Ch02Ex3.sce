// Scilab Code Ex2.3:: Page-2.10 (2009)
clc; clear;
I2 = 1;     // For simplicity assume intensity from slit 2 to be unity, W/sq-m
I1 = I2*25; // Intensity from slit 1, W/sq-m
I_ratio = I1/I2;    // Intensity ratio
a_ratio = sqrt(I_ratio);    // Amplitude ratio
a2 = 1;     // For simplicity assume amplitude from slit 2 to be unity, m
a1 = a_ratio*a2;    // Amplitude from slit 1, m
I_max = (a1 + a2)^2;   // Maximum intensity of wave during interference, W/sq-m
I_min = (a1 - a2)^2;   // Minimum intensity of wave during interference, W/sq-m
cf = 4; // Common factor
printf("\nThe ratio of maximum intentisy to minimum intensity of interference fringes = %d/%d", I_max/cf, I_min/cf); 

// Result 
// The ratio of maximum intentisy to minimum intensity of interference fringes = 9/4 
