// Scilab Code Ex4.1 : Page-4.13 (2004)
clc;clear;
function thet = degree_minute (d, m)
    thet = d + m/60; 
endfunction
deg = 8, minutes = 35;   // Given glancing angle, degrees-minutes
theta = degree_minute (deg, minutes);    // Convert degree-minutes to degrees
d = 0.282;    // lattice spacing for NaCl crystal, nm
n = 1;       // Order of diffraction
lambda = 2*d*sind(theta)/n;   // Wavelength from Bragg's law, nm
printf("\nWavelength of X rays = %6.4f nm ", lambda);
theta = 90; // maximum possible value for theta for maximum order of diffraction
n = 2*d*sind(theta)/lambda;  // order of diffraction from Bragg's law
printf("\nMaximum possible order of diffraction = %1d", n);

// Result 
// Wavelength of X rays = 0.0842 nm 
// Maximum possible order of diffraction = 6 
