// Ex15_3 Page:298 (2014)
clc;clear;
P = 2.5e-003;    // Output power of laser source, W
d = 1.8e-02;    // Diameter of the aperture, m
a = d/2;    // Radius of the beam, m
lambda = 5000e-010;    // Wavelength of laser light, m
f = 20e-002;    // Focal length of the lens, m
A = %pi*(lambda*f/a)^2;    // Area of the spot at the focal plane, Sq.m
I = P*(a/(lambda*f))^2/%pi;    // Intensity of the image, W/Sq.m
printf("\nThe area of the spot at the focal plane = %4.2e Sq.m", A);
printf("\nThe intensity of the image = %4.2e W/Sq.m", I);

// Result
// The area of the spot at the focal plane = 3.88e-010 Sq.m
// The intensity of the image = 6.45e+006 W/Sq.m 