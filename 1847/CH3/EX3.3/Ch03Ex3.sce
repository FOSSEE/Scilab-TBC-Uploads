// Scilab Code Ex3.3:: Page-3.10 (2009)
clc; clear;
lambda = 5500e-010;  // Wavelength of light used, cm
u = -4;     // Distance of the zone plate from source, cm
D = 3.7e-003;   // Diameter of central zone of zone plate, cm
r = D/2;    // Radius of central zone of zone plate, cm
n = 1;  // Order of zone plate
f1 = r^2/(n*lambda);        // Principal focal length, cm
v1 = 36;     // Position of the strongest image from the zone plate, cm
v2 = 9;     // Position of the next image from the zone plate, cm
// As 1/v - 1/u = 1/f, solving for v
v = 1/(1/f1+1/u);        // Position of the first image in a zone plate, cm

printf("\nThe position of the first image in a zone plate = %2d cm", floor(v));

// Result 
// The position of the first image in a zone plate = -12 cm 
