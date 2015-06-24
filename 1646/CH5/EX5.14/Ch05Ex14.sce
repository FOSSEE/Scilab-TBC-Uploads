// Scilab Code Ex5.14: Page:303 (2011)
clc;clear;
lambda = 5.9e-007;....// Wavelength of the reflected light, m
n = 10;....// Order of the ring
D10 = 0.005;....// Diameter of the 10th ring,in m 
R = (D10^2)/(4*n*lambda);    // Radius of curvature of the lens, m
printf("\nThe radius of curvature of the lens = %6.4f m", R);
t = (D10^2)/(8*R);    // Thickness of the corresponding air film, m
printf("\nThe thickness of the corresponding air film = %4.2e m",t);

// Result
// The radius of curvature of the lens = 1.0593 m
// The thickness of the corresponding air film = 2.95e-006 m 
