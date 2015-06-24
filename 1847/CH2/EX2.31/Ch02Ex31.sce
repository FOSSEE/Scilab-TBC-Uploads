// Scilab Code Ex2.31:: Page-2.22 (2009)
clc; clear;
mu1 = 1.55;     // Refractive index of mica
mu2 = 1.52;     // Refractive index of glass
t = 0.75e-003;  // Thickness of the sheets, m
d = 0.25e-02;   // Separation between the slits, m
lambda = 5896e-010; // Wavelength of light used, m
D = 1.5;    // Distance between the source ans the slits, m
// Fringe width
b = lambda*D/d;     // Fringe width, m
// Optical path difference
delta_x = (mu1-1)*t-(mu2-1)*t;  // Optical path change, m

printf("\nThe fringe width = %3.1e m", b);
printf("\nThe optical path change = %5.3e m", delta_x);

// Result 
// The fringe width = 3.5e-004 m
// The optical path change = 2.250e-005 m 
