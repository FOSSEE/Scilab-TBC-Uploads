//Scilab Code Ex5.4: Page:298 (2011) 
clc;clear;
lambda = 6.0e-7;....// Wavelength of the monochromatic light, m
D = 1;....// Distance between the screen and the two coherent sources, m 
W = 5e-004;....// Fringe width, m
d = lambda*D/(W*1e-03);    // Distance between two coherent sources, mm
printf("\nThe distance between the two coherent sources = %3.1f mm", d);

// Result
// The distance between the two coherent sources = 1.2 mm   
