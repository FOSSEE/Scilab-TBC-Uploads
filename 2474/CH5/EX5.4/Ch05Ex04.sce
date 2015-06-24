// Scilab code Ex5.4: Pg.200 (2008)
clc; clear;
l_p = 20;    // Length of pier, m
w = 15;    // Number of wave crests
lamda = l_p/w;    // Wavelength of waves, m
delta_x = 20;    // Spatial extent of the waves, m
delta_lamda = lamda^2/(2*%pi*delta_x);    // Minimum uncertainity in wavelength, m
printf("\nThe minimum uncertainity in the wavelength of ocean waves = %5.3f m or %1d cm", delta_lamda, delta_lamda*1e+02);

// Result
// The minimum uncertainity in the wavelength of ocean waves = 0.014 m or 1 cm 