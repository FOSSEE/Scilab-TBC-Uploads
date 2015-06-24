// Scilab Code Ex4.2 : Page-91 (2010)
D = 0.04;    // Diameter of circular aperture, cm
f = 20;    // Focal length of convex lens, cm
lambda = 6000e-008;    // Wavelength of light used, m
// We have sin(theta) = 1.22*lambda/D = theta, for small theta, such that
// For first dark ring
theta = 1.22*lambda/D;    // The half angular width at central maximum, rad
r1 = theta*f;    // The half width of central maximum for first dark ring, cm
// We have sin(theta) = 5.136*lambda/(%pi*D) = theta, for small theta, such that
// For second dark ring
theta = 5.136*lambda/(%pi*D);    // The half angular width at central maximum, rad
r2 = theta*f;    // The half width of central maximum for second dark ring, cm
printf("\nThe radius of first dark ring = %4.2e cm", r1);
printf("\nThe radius of second dark ring = %4.1e cm", r2);

// Result 
// The radius of first dark ring = 3.66e-002 cm
// The radius of second dark ring = 4.90e-002 cm