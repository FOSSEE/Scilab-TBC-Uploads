// Scilab Code Ex3.10 : Page-73 (2010)
lambda1 = 5896e-008;    // Wavelength of D1 line of sodium, m
lambda2 = 5890e-008;    // Wavelength of D2 line of sodium, m
lambda = (lambda1+lambda2)/2;
// As lambda1 - lambda2 = lambda^2/(2*x), solving for x
x = lambda^2/(2*(lambda1 - lambda2));    // Shift in movable mirror of Michelson Interferometer, cm
printf("\nThe shift in movable mirror = %5.3f mm", x/1e-001);

// Result 
// The shift in movable mirror = 0.289 mm 