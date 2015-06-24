// Scilab Code Ex3.1 : Page-71 (2010)
beta = 0.51e-02;    // Fringe width, cm
d = 2.2e-02;       // Distance between the slits, cm
D = 2e+02;    // Distance between the slits and the screen, cm
// As beta = D*lambda/d, solving for lambda
lambda = beta*d/D;    // Wavelength of light, m
printf("\nThe wavelength of light = %4d angstrom", lambda/1e-010);

// Result 
// The wavelength of light = 5610 angstrom 