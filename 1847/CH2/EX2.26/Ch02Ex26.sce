// Scilab Code Ex2.26:: Page-2.20 (2009)
clc; clear;
lambda = 5400e-008;     // Wavelength of light used, cm
mu = 1.7;   // Refractive index of material sheet convering the first slit
mu_prime = 1.5;     // Refractive index of material sheet convering the seecond slit
// As shift, S = D/d*(mu - mu_prime)*t = b/lambda*(mu - mu_prime)*t, solving for t
t = 8*lambda/(mu-mu_prime)    // Thickness of the glass sheet, cm

printf("\nThe thickness of the glass sheet = %4.2e cm", t);

// Result 
// The thickness of the glass sheet = 2.16e-003 cm 
