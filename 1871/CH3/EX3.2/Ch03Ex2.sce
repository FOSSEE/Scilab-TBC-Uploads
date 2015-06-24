// Scilab code Ex3.2: Pg:90 (2008)
clc;clear;
f1 = 10;    // Focal length of converging lens, cm
f2 = -10;    // Focal length of diverging lens, cm
d = 5;    // Distance of separation between two lenses, cm
F = f1*f2/(f1 + f2 - d);    // Focal length of the combination of lenses, cm
P = 100/F;    // Power of the combination of lenses, diopter
// Positions of Principal Points
alpha = F*d/f2;    // Distance of the first principal point from the first lens, cm
bita = -F*d/f1;    // Distance of the second principal point from the second lens, cm
printf("\nThe focal length of the combination of lenses = %2.0f cm", F);
printf("\nThe power of the combination of lenses = %1.0f diopter", P);
printf("\nThe positions of Principal points = %2.0f cm and %2.0f cm", alpha, bita);

// Result 
// The focal length of the combination of lenses = 20 cm
// The power of the combination of lenses = 5 diopter
// The positions of Principal points = -10 cm and -10 cm 