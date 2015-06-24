// Scilab Code Ex5.32: Page:312 (2011)
clc;clear;
lambda = 5.461e-07;....// Wavelength of light used, m
d = 5.55e-07;....// Distance between the two luminous objects, m
// As d = 1.22*lambda/(2*mu*sin(alpha)) = 1.22*lambda/(2*NA), solving for NA
NA = 1.22*lambda/(2*d);     // Numerical aperature of the objective of microscope 
printf("\nThe numerical aperature of the objective of microscope = %4.2f ", NA);

// Result
// The numerical aperature of the objective of microscope = 0.60  
