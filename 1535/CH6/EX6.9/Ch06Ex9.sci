// Scilab Code Ex6.9 : X-ray Diffraction by crystal planes: Page-137 (2010)
// For (221) planes
h = 2; k = 2; l = 1; // Miller Indices for planes in a cubic crystal
a = 2.68e-010;    // Interatomic spacing, m
n = 1;    // First Order of diffraction 
theta = 8.5;    // Glancing angle at which Bragg's reflection occurs, degrees
d = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing for cubic crystal, m
lambda = 2*d*sind(theta);    // Bragg's Law for wavelength of X-rays, m
n = 2;    // Second order of diffraction
theta = asind(n*lambda/(2*d));    // Angle at which second order Bragg reflection occurs, degrees
printf("\nThe interplanar spacing between consecutive (221) planes = %5.3e", d);
printf("\nThe wavelength of X-rays = %5.3f angstrom", lambda/1e-010);
printf("\nThe angle at which second order Bragg reflection occurs = %4.1f degrees", theta);

// Result
// The interplanar spacing between consecutive (221) planes = 8.933e-011
// The wavelength of X-rays = 0.264 angstrom
// The angle at which second order Bragg reflection occurs = 17.2 degrees 