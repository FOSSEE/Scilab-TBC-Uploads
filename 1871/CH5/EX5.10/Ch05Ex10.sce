// Scilab code Ex5.10:  Pg:219 (2008)
clc;clear;
Lambda = 5.9e-05;    // Wavelength of spectral line, Angstorm
n = 2;    // Second order principal maxima 
f = 25;    // focal length of the convex lens, cm
aplusb = 2.54/15000;    // Grating element where a is the width of slit and b is the width of opaque region in a grating, cm
sin_theta = n*Lambda/aplusb;    
// Since (a +b)*sin_theta = n*Lambda, solving for cos_theta 
cos_theta = sqrt(1-sin_theta^2);
tl_ratio = n/(aplusb*cos_theta);    // Angular dispersion produced by grating, radians per Angstorm
xl_ratio = f*(tl_ratio);    // Linear dispersion in the spectrograph, radian per Angstorm
d_Lambda = 6;    // Separation between two wavelengths, Angstorm
d_x = xl_ratio*1e-008*d_Lambda;    // Separation between spectral lines, cm
printf("\nThe angular dispersion produced by the grating = %3.1e rad/angstrom", tl_ratio*1e-008);
printf("\nThe linear dispersion in the spectrograph = %1.0e cm/Angstorm", xl_ratio*1e-008);
printf("\nThe separation between spectral lines = %3.1e cm", d_x);

// Result 
// The angular dispersion produced by the grating = 1.6e-004 rad/angstrom
// The linear dispersion in the spectrograph = 4e-003 cm/Angstorm
// The separation between spectral lines = 2.5e-002 cm 