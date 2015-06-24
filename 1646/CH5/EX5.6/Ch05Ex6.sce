// Scilab Code Ex5.6: Page:299 (2011) 
clc;clear;
lambda = 6.328e-007;....// Wavelength of the monochromatic light, m
D = 40;....// Distance between the slits and the screen, m 
W = 0.1;....// Distance between the interference maxima, m
d = lambda*D/W;    // Distance between the slits, m
printf("\nThe distance between the slits = %6.4f mm",d/1e-03);

// Result
// The distance between the slits = 0.2531 mm 
