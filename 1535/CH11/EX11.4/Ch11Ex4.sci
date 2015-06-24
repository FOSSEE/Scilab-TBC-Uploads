// Scilab Code Ex11.4: Page-250 (2010)
lambda = 500e-009;    // Wavelength of laser light, m
f = 15e-02;    // Focal length of the lens, m
d = 2e-02;    // Diameter of the aperture of source, m
a = d/2;    // Radius of the aperture of source, m
P = 5e-003;    // Power of the laser, W
A = %pi*lambda^2*f^2/a^2;    // Area of the spot at the focal plane, metre square
I = P/A;    // Intensity at the focus, W per metre square    
printf("\nThe area of the spot at the focal plane = %4.2e metre square", A);
printf("\nThe intensity at the focus = %4.2e watt per metre square", I);

// Result
// The area of the spot at the focal plane = 1.77e-010 metre square
// The intensity at the focus = 2.83e+007 watt per metre square 