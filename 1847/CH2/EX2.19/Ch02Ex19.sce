// Scilab Code Ex2.19: : Page-2.16 (2009)
clc; clear;
lambda1 = 7000e-008;    // Original wavelength of light, cm
lambda2 = 5000e-008;    // New wavelength of light, cm
n1 = 10;    // Order of the fringes with original wavelength
// As x = n*lambda*D/d, so n*lambda = constant
// n1*lambda1 = n2*lambda2, solving for n2
n2 = n1*lambda1/lambda2;    // Order of visible fringe for changed wavelength of light
 
printf("\nThe order of visible fringe for changed wavelength of light = %2d", ceil(n2));

// Result
// The order of visible fringe for changed wavelength of light = 14 
