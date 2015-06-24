// Scilab Code Ex3.32:: Page-3.50 (2009)
clc; clear;
// Function to convert theta into degree-minute
function[degre, minute]=deg_2_degminsec(theta)
    degre = floor(theta);
    minute = (theta-floor(theta))*60;
endfunction

N = 15000;      // No. of lines on the grating per inch, lines/inch
a_plus_b = 2.54/N;      // Grating element, cm
lambda = 6000e-008;     // Wavelength of light used, cm
n = 1;      // Order of diffraction spectra
// But a_plus_b*sind(theta)=n*lambda, solving for theta
theta = asind(n*lambda/a_plus_b);       // Direction in which first order spectra is seen, degrees
[deg, mint] = deg_2_degminsec(theta);
printf("\nThe angle of diffraction for maxima in first order = %2d degrees %2d min", deg, mint);

// Result 
// The angle of diffraction for maxima in first order = 20 degrees 45 min 
