// Scilab Code Ex4.1 : Page-91 (2010)
D = 50;    // Distance between source and the screen, cm
lambda = 6563e-008;    // Wavelength of light of parallel rays, m
d = 0.385e-01;        // Width of the slit, cm
n = 1;    // Order of diffraction for first minimum
// As sin(theta1) = n*lambda/d = x1/D, solving for x1
x1 = n*lambda*D/d;    // Distance from the centre of the principal maximum to the first minimum, cm
printf("\nThe Distance from the centre of the principal maximum to the first minimum = %4.2f mm", x1/1e-001);
n = 5;    // Order of diffraction for fifth minimum
x2 = n*lambda*D/d;    // Distance from the centre of the principal maximum to the fifth minimum, cm
printf("\nThe Distance from the centre of the principal maximum to the fifth minimum = %4.2f mm", x2/1e-001);

// Result 
// The Distance from the centre of the principal maximum to the first minimum = 0.85 mm
// The Distance from the centre of the principal maximum to the fifth minimum = 4.26 mm