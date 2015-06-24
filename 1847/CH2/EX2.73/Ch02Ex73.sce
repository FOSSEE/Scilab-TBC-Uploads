// Scilab Code Ex2.73:: Page-2.58(2009)
clc; clear;
N = 550;        // Number of fringes crossing the field of view
lambda = 5500e-008;    // Wavelength of light used, cm
mu = 1.5;       // Refractive index of the glass slab
// As 2*(mu-1)*t = N*lambda, solving for t
t = N*lambda/(2*(mu-1));       // Thickness of the transparent glass film

printf("\nThe distance between two successive positions of movable mirror = %3.1e cm", t);

// Result
// The distance between two successive positions of movable mirror = 3.0e-002 cm 
