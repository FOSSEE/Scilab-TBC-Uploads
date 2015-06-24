// Scilab Code Ex2.52:: Page-2.36(2009)
clc; clear;
lambda = 5893e-010;     // Wavelength of light used, m
mu = 1;      // Refractive index of the glass
b = 1;       // Assume fringe width to be unity, cm
// As b = l/20, solving for l
l = b*20;       // Length of the film, m
// As b = lambda/(2*mu*theta) and theta = t/l, solving for t
t = lambda*l/(2*mu);    // Thickness of the wire separating two glass surfaces, m

printf("\nThe thickness of the wire separating two glass surfaces = %4.2e m", t);

// Result
// The thickness of the wire separating two glass surfaces = 5.89e-06 m 
