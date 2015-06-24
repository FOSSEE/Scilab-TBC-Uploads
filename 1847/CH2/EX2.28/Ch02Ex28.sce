// Scilab Code Ex2.28:: Page-2.20 (2009)
clc; clear;
D = 1;   // For simplicity assume distance between source and slits to be unity, unit
d = 1;   // For simplicity assume slit separation to be unity, unit
t = 2.964e-06;    // Thickness of the mica sheet, cm
mu = 1.5;   // Refractive index of material of shee
L = poly(0, 'L');
// As b = b_prime or 2.25*D*L/d = D/d*(mu-1)*t, or we may write
L = roots(2.25*D*L/d-D/d*(mu-1)*t);     // Wavelength of the light used, m

printf("\nThe wavelength of the light used = %4.0f angstrom", L/1e-010);

// Result 
// The wavelength of the light used = 6587 angstrom 
