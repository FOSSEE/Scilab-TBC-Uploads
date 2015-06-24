// Scilab Code Ex3.4:: Page-3.11 (2009)
clc; clear;
lambda = 1;     // For simplicity assume wavelength of light used to be unity, unit
R = 150;        // Radius of curvature of the curved surface, cm
r1 = sqrt(lambda*R);    // For Newton's ring, cm
f1 = r1^2/lambda;       // Principal focal length of zone plate, cm

printf("\nThe principal focal length of zone plate = %3d cm", f1);

// Result 
// The principal focal length of zone plate = 150 cm 
