// Scilab Code Ex2.32:: Page-2.22 (2009)
clc; clear;
b = 1;      // For simplicity assume fringe width to be unity, cm
S = 3*b;   // Fringe shift, cm
lambda = 5890e-008;     // Wavelength of light used, cm
mu = 1.6;   // Refractive index of the mica sheet
// As S = b/lambda*(mu-1)*t, solving for t
t = S*lambda/(mu-1);       // Thickness of the mica sheet, cm

printf("\nThe thickness of the mica sheet = %3.1e m", t/1e+02);

// Result 
// The thickness of the mica sheet = 2.9e-006 m 
