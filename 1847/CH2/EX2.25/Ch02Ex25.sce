// Scilab Code Ex2.25:: Page-2.19 (2009)
clc; clear;
lambda = 5890e-008;     // Wavelength of light used, cm
mu = 1.5;   // Refractive index of material sheet
// As shift = 9*lambda*D/d = D/d*(mu - 1)*t, solving for t
t = 9*lambda/(mu - 1);    // Thickness of the glass sheet, cm
printf("\nThe thickness of the glass sheet = %4.2e cm", t);

// Result 
// The thickness of the glass sheet = 1.06e-003 cm 
