// Scilab code Ex3.4 : Pg:97 (2008)
clc;clear;
f = 4;    // Focal length of eye lens of Huygen eye-piece, cm
f1 = 3*f;    // Focal length of first lens, cm
f2 = f;    // Focal length of second lens, cm
d = 2*f;    // Distance of separation between two lenses, cm
F = f1*f2/(f1 + f2 - d);    // Focal length of the combination of lenses, cm
// Positions of Principal Points
alpha = F*d/f2;    // Distance of the first principal point from the first lens, cm
bita = -F*d/f1;    // Distance of the second principal point from the second lens, cm
// Positions of Focal Points
L1F1 = -F*(1-d/f2);    // Distance of the first focal point from the first lens, cm
L2F2 = F*(1-d/f1);    // Distance of the second focal point from the second lens, cm
// Positions of Final image
u = -18;    // Object distance from principal point, cm
// As from thin lens formula, 1/v - 1/u = 1/F, solving for v
v = (u*F)/(u+F);    // Image distance from principal point, cm
L2I = v + bita;    // The position of image to the right of eye lens, cm
printf("\nThe positions of Principal points = %2.0f cm and %1.0f cm", alpha, bita);
printf("\nThe positions of Focal points = %1.0f cm and %1.0f cm", L1F1, L2F2);
printf("\nThe The position of image to the right of eye lens = %1.0f cm", L2I);


// Result 
// The positions of Principal points = 12 cm and -4 cm
// The positions of Focal points = 6 cm and 2 cm
// The The position of image to the right of eye lens = 5 cm 