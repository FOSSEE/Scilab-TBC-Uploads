// Scilab Code Ex5.10: Page:301 (2011)
clc;clear;
D10 = 0.005;....// Diameter of Newton's 5th ring, m 
n = 10;....// Order of the ring
lambda = 6.0e-007;....// Wavelength of the light used, m
R = (D10^2)/(4*n*lambda);    // Radius of the curvature of the lens, m
printf("\nThe radius of the curvature of the lens = %6.4f m", R);
t = D10^2/(8*R);  
printf("\nThe thickness of the corresponding air film = %3.1e m",t);

// Result
// The radius of the curvature of the lens = 1.0417 m
// The thickness of the corresponding air film = 3.0e-006 m m 
