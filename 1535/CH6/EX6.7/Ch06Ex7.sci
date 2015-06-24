// Scilab Code Ex6.7 : Angle of reflection by using wavelength of X-ray:  Page-136 (2010)
lambda = 1.440e-010;    // Wavelength of X-rays, m
d = 2.8e-010;    // Interplanar spacing of rocksalt crystal, m
// 2*d*sin(theta) = n*lambda    **Bragg's law, n is the order of diffraction
// Solving for theta, we have

// For Ist Order diffraction
n = 1;
theta = asind(n*lambda/(2*d));    // Angle of diffraction, degrees
printf("\nThe angle of reflection for first order diffraction = %4.1f degrees", theta);

// For IInd Order diffraction
n = 2;
theta = asind(n*lambda/(2*d));    // Angle of diffraction, degrees
printf("\nThe angle of reflection for first order diffraction = %4.1f degrees", theta);

// Result
// The angle of reflection for first order diffraction = 14.9 degrees
// The angle of reflection for first order diffraction = 30.9 degrees 