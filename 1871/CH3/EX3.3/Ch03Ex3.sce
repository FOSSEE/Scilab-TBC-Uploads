// Scilab code Ex3.3 : Pg:91 (2008)
clc;clear;
f1 = 30;    // Focal length of convex lens, cm
f2 = -50;    // Focal length of concave lens, cm
d = 20;    // Distance of separation between two lenses, cm
F = f1*f2/(f1 + f2 - d);    // Focal length of the combination of lenses, cm
// Positions of Principal Points
alpha = F*d/f2;    // Distance of the first principal point from the first lens, cm
bita = -F*d/f1;    // Distance of the second principal point from the second lens, cm
// Positions of Focal Points
L1F1 = -F*(1-d/f2);    // Distance of the first focal point from the first lens, cm
L2F2 = F*(1-d/f1);    // Distance of the second focal point from the second lens, cm
// Positions of Final image
u = -25;    // Object distance from principal point, cm
// As from thin lens formula, 1/v - 1/u = 1/F, solving for v
v = (u*F)/(u+F);    // Image distance from principal point, cm
m = v/u;    // Linear magnification
printf("\nThe positions of Principal points = %2.0f cm and %4.2f cm", alpha, bita);
printf("\nThe positions of Focal points = %4.1f cm and %4.1f cm", L1F1, L2F2);
printf("\nThe image distance from principal point = %2.0f cm", v);
printf("\nThe linear magnification = %1.0f cm", m);


// Result 
// The positions of Principal points = -15 cm and -25.00 cm
// The positions of Focal points = -52.5 cm and 12.5 cm
// The image distance from principal point = -75 cm
// The linear magnification = 3 cm 