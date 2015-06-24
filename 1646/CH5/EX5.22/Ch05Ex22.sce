// Scilab Code 5.22: Page:307 (2011) 
clc;clear;
lambda = 5.0e-07;....// Wavelength of the radiation, m
a_plus_b = 2.54e-02/2620;....// The grating element, m
theta_max = 90;    // Maximum value of angle of diffraction, degrees
n_max = a_plus_b/lambda*sind(theta_max);    // Maximum number of visible orders 
printf("\nThe number of visible orders = %2d ", n_max);

// Result
// The number of visible orders = 19  
