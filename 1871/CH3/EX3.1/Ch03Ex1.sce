// Scilab code Ex3.1  Pg:89 (2008)
clc;clear;
f1 = 30;    // Focal length of first lens, cm
f2 = 10;    // Focal length of second lens, cm
d = 25;    // Distance of separation between two lenses, cm
F = f1*f2/(f1 + f2 - d);    // Focal length of the combination of lenses, cm
// Positions of Principal Points
alpha = F*d/f2;    // Distance of the first principal point from the first lens, cm
bita = -F*d/f1;    // Distance of the second principal point from the second lens, cm
// Positions of Focal Points
L1F1 = -F*(1-d/f2);    // Distance of the first focal point from the first lens, cm
L2F2 = F*(1-d/f1);    // Distance of the second focal point from the second lens, cm
printf("\nThe positions of Principal points = %2.0f cm and %4.2f cm", alpha, bita);
printf("\nThe positions of Focal points = %2.0f cm and %3.1f cm", L1F1, L2F2);

// Result 
// The positions of Principal points = 50 cm and -16.67 cm
// The positions of Focal points = 30 cm and 3.3 cm