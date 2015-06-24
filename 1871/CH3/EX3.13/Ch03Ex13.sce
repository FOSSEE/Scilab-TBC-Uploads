// Scilab code Ex3.13 : Pg:115 (2008)
clc;clear;
P = 5;    // Power of combination of a convex lens and a plano-convex lens, dioptre
mu1 = 1.50;    // Refractive index of crown glass
mu2 = 1.60;    // Refractive index of flint glass
omega1 = 0.01;    // Dispersive power of the crown glass convex lens
omega2 = 0.02;    // Dispersive power of flint glass plano-convex lens
F = 100/P;    // Focal length of the combination of lenses, cm
f_ratio = -omega2/omega1;    // Ratio of f2 to f1
// From thin lens formula, 1/F = 1/f1 + 1/f2 and as f2 = f_ratio*f1, solving for f1
f1 = -F/f_ratio;    // Focal length of flint glass lens, cm
f2 = f_ratio*f1;    // Focal length of crown glass lens, cm
mu = 1.60;    // Refractive index of flint glass
R2 = %inf;    // Radius of curvature of the first surface of convex lens, cm
// Now from lens maker's formula
R1 = (mu - 1)/(1/f2+(mu-1)/R2);    // Radius of curvature of second surface of convex lens, cm
mu = 1.5;    // Refractive index of crown glass
R2 = R1;    // Radius of curvature of the first surface of convex lens, cm
R1_prime = (mu - 1)/(1/f1+(mu-1)/R2);    // Radius of curvature of second surface of concave lens, cm
printf("\nThe radii of curvature of the convex lens are = %-3.1f cm and %2.0f cm", R1_prime, R1);

// Result 
// The radii of curvature of the convex lens are = 8.6 cm and -12 cm
