// Scilab Code Ex3.6 : Page-72 (2010)
lambda = 5900e-008;    // Wavelength of monochromatic lihgt used, m
t = 0.010e-01;    // Spacer thickness, cm
l = 10;    // Wedge length, cm
theta = t/l;    // Angle of the wedge, rad
beta = lambda/(2*theta);    // Fringe width, cm
printf("\nThe separation between consecutive bright fringes = %5.3e cm", beta);

// Result 
// The separation between consecutive bright fringes = 2.950e-001 cm 