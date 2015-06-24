// Scilab code Ex3.15 : Pg:117 (2008)
clc;clear;
omega1 = 0.01;    // Dispersive power of the crown glass convex lens
omega2 = 0.02;    // Dispersive power of flint glass plano-convex lens
f1 = 20;    // Focal length of crown glass lens, cm
f2 = 30;    // Focal length of crown flint lens, cm
d = (omega1*f2+omega2*f1)/(omega1 + omega2);    // The distance between two achromatic lenses of different material, cm
// For same material
printf("\nThe distance between two achromatic lenses of different material = %5.2f cm", d);
omega1 = 1, omega2 = 1;    
d = (omega1*f2+omega2*f1)/(omega1 + omega2);    // The distance between two achromatic lenses of same material, cm
printf("\nThe distance between two achromatic lenses of same material = %2.0f cm", d);

// Result 
// The distance between two achromatic lenses of different material = 23.33 cm
// The distance between two achromatic lenses of same material = 25 cm 