// Scilab Code Ex4.3 : Page-91 (2010)
n = 2;    // Order of diffraction
lambda = 650e-009;    // Wavelength of light used, m
d = 1.2e-05;    // Distance between two consecutive slits of grating, m
// We have sin(theta) = n*N*lambda = n*lambda/d, solving for theta
theta = asind(n*lambda/d);    // Angle at which the 650 nm light produces a second order maximum, degrees
printf("\nThe angle at which the 650 nm light produces a second order maximum = %4.2f degrees", theta);

// Result 
// The angle at which the 650 nm light produces a second order maximum = 6.22 degrees 