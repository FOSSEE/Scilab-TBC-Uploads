// Scilab Code Ex4.14 : Page-200 (2011)
clc;clear;
mu_R = 1.5230;    // Refractive index for red wavelength
mu_V = 1.5145;    // Refractive index for violet wavelength
R1 = 40;    // Radius of curvature for red wavelength, cm
R2 = -10;    // Radius of curvature for violet wavelength, cm
// As 1/f = (mu - 1)*(1/R1 - 1/R2), solving for fV and fR
fV = 1/((mu_V-1)*(1/R1-1/R2));    // Focal length for violet wavelength, cm 
fR = 1/((mu_R-1)*(1/R1-1/R2));    // Focal length for violet wavelength, cm 
l = fR - fV;    // Longitudinal chromatic aberration, cm
printf("\nThe longitudinal chromatic aberration = %5.3f cm", abs(l));

// Result
// The longitudinal chromatic aberration = 0.253 cm 
