// Scilab code Ex3.11 : Pg:113 (2008)
clc;clear;
mu_V = 1.55;    // Refractive index of violet color
mu_R = 1.53;    // Refractive index of red color
mu_Y = (mu_V + mu_R)/2;    // Refractive index of yellow color
omega1 = (mu_V - mu_R)/(mu_Y - 1);    // Dispersive power of the crown glass convex lens
F = 150;    // Focal length of the combination of lenses, cm
R = 54;    // Radius of curvature of the convex lens, cm
f1 = R/(2*(mu_Y-1));    // Focal length of the convex lens from thin lens maker formula, cm
f2 = F*f1/(f1 - F);    // Focal length of the second lens, cm
// As omega1/omega2 = -f1/f2, solving for omega2
omega2 = -f2/f1*omega1;    // Dispersive power of flint glass
printf("\nThe dispersive power of flint glass = %5.3f", omega2);

// Result 
// The dispersive power of flint glass = 0.056 