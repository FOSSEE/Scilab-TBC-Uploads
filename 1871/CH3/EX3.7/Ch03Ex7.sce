// Scilab code Ex3.7  : Pg:102 (2008)
clc;clear;
F = 9.0;    // Focal length of the eye-piece, cm
// As F = f1*f2/(f1 + f2 - d) and f1 = f; f2 = f; d = 2/3*f, solving for f
f = poly(0, 'f');
f = roots(f*f-F*(f+f-2/3*f));    // Focal length of the eye-lens, cm
d = 2/3*f(1);    // Distance of separation of two lenses, cm
f1 = f(1);    // Focal length of the first plano-convex lens, cm
f2 = f(1);    // Focal length of the second plano-convex lens, cm
alpha = F*d/f2;    // Distance of first principal point from the field lens L1, cm
bita = -F*d/f1;    // Distance of second principal point from the field lens L2, cm
L1F1 = -F*(1-d/f2);    // Distance of first focal point from the lens L1, cm
L2F2 = F*(1-d/f1);     // Distance of second focal point from the lens L2, cm   
printf("\nThe focal lengths of the plano-convex lenses are %1.0f cm and %2.0f cm", f1, f2);
printf("\nThe distance between the lenses = %1.0f cm", d);
printf("\nThe distance of first principal point from the field lens L1 = %1.0f cm", alpha);
printf("\nThe distance of second principal point from the field lens L2 = %1.0f cm", bita);
printf("\nThe distance of first focal point from the field lens L1 = %1.0f cm", L1F1);
printf("\nThe distance of second focal point from the field lens L2 = %1.0f cm", L2F2);

// Result 
// The focal lengths of the plano-convex lenses are 12 cm and 12 cm
// The distance between the lenses = 8 cm
// The distance of first principal point from the field lens L1 = 6 cm
// The distance of second principal point from the field lens L2 = -6 cm
// The distance of first focal point from the field lens L1 = -3 cm
// The distance of second focal point from the field lens L2 = 3 cm