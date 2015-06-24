// Scilab Code Ex5.7: Page:299 (2011)
clc;clear;
lambda = 5.0e-007;....// Wavelength of the monochromatic light, m
D = 1;....// Distance between the silts and the screen, m
d = 5e-004/2;....// Half of the distance between the two slits, m
mu = 1.5;....// Refractive index of glass
t = 1.5e-006;....// Thickness of thin glass plate, m
del_x = D*(mu-1)*t/(2*d);
printf("\nThe lateral shift of central maximum = %3.1f m", del_x/1e-03);

// Result
// The lateral shift of central maximum = 1.5 m 
