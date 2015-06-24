// Scilab Code Ex4.11: Page-197  
clc;clear;
w1 = 0.017;....// Magnitude of the dispersive power of first lens
w2 = 0.034;....// Magnitude of the dispersive power of second lens
// Let 1/f1 = x and 1/f2 = y, then
// The condition for achromatic combination of two lenses, w1/f1 + w2/f2 = 0 => w1*x + w2*y = 0    --- (I)
F = 40;....// Given focal length of achromatic doublet, cm
// Also F = 1/f1 + 1/f2 => F = x + y    ---- (II)
A = [w1 w2; 1 1];      // Square matrix
B = [0;1/F];    // Column vector
X = inv(A)*B;    // Characteristic roots of the simultaneous equations, cm
f1 = 1/X(1);    // Focal length of convex lens, cm
f2 = 1/X(2);    // Focal length of concave lens, cm
// For the convex lens
R2 = -25;    // Radius of curvature of the contact surface, cm 
mu = 1.5;    // Mean refractive index of crown glass
// From the Lens Maker formula, 1/f = (mu - 1)*(1/R1-1/R2), solving for R1
f = f1;
R1 = 1/(1/(f*(mu-1))+1/R2);    // Radius of curvature of second surface of first lens, cm
printf("\nThe radius of curvature of second surface of first lens = %5.2f cm", R1);
// For the concave lens
R1 = -25;    // Radius of curvature of the contact surface, cm 
mu = 1.7;    // Mean refractive index of flint glass
// From the Lens Maker formula, 1/f = (mu - 1)*(1/R1-1/R2), solving for R1
f = f2;
R2 = 1/(1/R1-1/(f*(mu-1)));    // Radius of curvature of second surface of second lens, cm
printf("\nThe radius of curvature of second surface of second lens = %5.2f cm", R2);

// Result
// The radius of curvature of second surface of first lens = 16.67 cm
// The radius of curvature of second surface of second lens = -233.33 cm 
