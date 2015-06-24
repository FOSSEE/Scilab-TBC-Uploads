// Scilab Code Ex5.28: Page:311 (2011) 
clc;clear;
lambda = 5.5e-07;....// Wavelength of light used, m
f = 3.0;....// Focal length of telescope objective, m 
a = 0.01;....// Diameter of the telescope objective, m
// As x/f = 1.22*lambda/a, the Rayleigh criterian for resolution, solving for x
x = 1.22*f*lambda/a;    // Distance between two stars just seen as separate, m
printf("\nThe distance between two stars just seen as separate = %3.1e m ", x);

// Result
// The distance between two stars just seen as separate = 2.0e-004 m  
