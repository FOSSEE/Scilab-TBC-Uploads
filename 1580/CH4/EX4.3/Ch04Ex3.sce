// Scilab Code Ex4.3 : Page-4.14 (2004)
clc;clear;
function thet = degree_minute (d, m)
    thet = d + m/60; 
endfunction

degr = 8, minutes = 35;   // Given glancing angle, degrees-minutes
theta = degree_minute (degr, minutes);    // Convert degree-minutes to degrees
d = 0.282;    // lattice spacing for NaCl crystal, nm
n = 1;       // Order of diffraction
lambda = 2*d*sind(theta)/n;   // Wavelength from Bragg's law, nm

printf("\nWavelength of X rays = %6.4f nm ", lambda);

// Result 
// Wavelength of X rays = 0.0842 nm 

