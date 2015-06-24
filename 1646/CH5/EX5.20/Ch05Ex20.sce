//Scilab Code Ex5.20: Page-306 (2011)
clc;clear;
D = 2;....// Distance of the screen from the slit, m
x = 1.6e-02;....// Position of centre of the second dark band, m
m = 2;    // Order of diffraction
a = 1.4e-04;....// Width of the slit, m
lambda = a*x/(m*D);    // Wavelength of light, m
printf("\n The wavelength of the light = %4d angstrom", ceil(lambda/1e-010));

// Result
// The wavelength of the light = 5600 angstrom 
