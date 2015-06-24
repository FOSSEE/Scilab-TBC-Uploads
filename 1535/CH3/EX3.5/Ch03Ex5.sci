// Scilab Code Ex3.5 : Page-72 (2010)
lambda = 5893e-008;    // Wavelength of monochromatic lihgt used, m
n = 10;    // Number of fringe that are found in the distnace of 1 cm
d = 1;    // Distance of 10 fringes, cm
beta = d/n;    // Fringe width, cm
theta = lambda/(2*beta);    // Angle of the wedge, rad
printf("\nThe angle of the wedge = %5.3e rad", theta);

// Result 
// The angle of the wedge = 2.946e-004 rad 