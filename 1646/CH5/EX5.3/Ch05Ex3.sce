// Scilab Code Ex5.3 : Page:298 (2011)
clc;clear;
lambda = 5.890e-7;....// Wavelength of source of light, m 
mu = 1.6;....//refractive index of the mica sheet
// As del_x = W*(mu-1)*t/lambda, where del_x = 3*W, solving for t
t = 3*lambda/(mu-1);    // Thickness of the mica sheet, m  
printf("\nThe thickness of the mica sheet = %5.3e cm", t/1e-02);

// Result
// The thickness of the mica plate is = 2.945e-004 cm 
