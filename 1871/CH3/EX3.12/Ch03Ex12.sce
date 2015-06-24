// Scilab code Ex3.12 : Pg:114 (2008)
clc;clear;
omega1 = 0.017;    // Dispersive power of the crown glass lens
omega2 = 0.034;    // Dispersive power of flint glass lens
F = 40;    // Focal length of the combination of lenses, cm
f1 = (omega2 - omega1)/omega2*F;    // Focal length of crown glass lens, cm
f2 = (omega1 - omega2)/omega1*F;    // Focal length of flint glass lens, cm
mu = 1.5;    // Refractive index of crown glass
R2 = -25;    // Radius of curvature of the first surface of convex lens, cm
// Now from lens maker's formula
R1 = (mu - 1)/(1/f1+(mu-1)/R2);    // Radius of curvature of second surface of convex lens, cm
printf("\nThe radius of curvature of the second surface of convex lens = %5.2f cm", R1);
mu = 1.7;    // Refractive index of flint glass
R1 = -25;    // Radius of curvature of the first surface of concave lens, cm
R2 = (mu - 1)/(1/f2-(mu-1)/R1);    // Radius of curvature of second surface of concave lens, cm
printf("\nThe radius of curvature of the second surface of concave lens = %6.2f cm", R2);

// Result 
// The radius of curvature of the second surface of convex lens = 16.67 cm
// The radius of curvature of the second surface of concave lens = 233.33 cm 
