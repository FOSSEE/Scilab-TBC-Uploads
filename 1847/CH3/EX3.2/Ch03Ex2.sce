// Scilab Code Ex3.2:: Page-3.9 (2009)
clc; clear;
v1 = 36;     // Position of the strongest image from the zone plate, cm
v2 = 9;     // Position of the next image from the zone plate, cm
lambda = 5890e-008;  // Wavelength of light used, cm
r1 = 1;   // For simplicity assume radius of first ring of zone plate to be unity, cm
n = 1;  // Order of zone plate
// As 1/v1-1/u = n*lambda/r1^2 = 1/3*(1/v2-1/u), solving for u
u = 2/(3/36-1/9);       // Distance of the zone plate from source, cm
// As 1/v-1/u = n*lambda/r1^2, solving for r1
r1 = sqrt(lambda/(1/v1-1/abs(u)));       // Radius of first zone, cm
f1 = r1^2/(n*lambda);   // Principal focal length, cm

printf("\nThe distance of the zone plate from source = %2d cm", u);
printf("\nThe radius of first zone = %3.1e cm", r1);
printf("\nThe principal focal length = %4.1f cm", f1);

// Result 
// The distance of the zone plate from source = -72 cm
// The radius of first zone = 6.5e-002 cm
// The principal focal length = 72.0 cm 
