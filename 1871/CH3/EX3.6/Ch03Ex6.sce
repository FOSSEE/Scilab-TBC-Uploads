// Scilab code Ex3.6 : Pg:101 (2008)
clc;clear;
F = 12;    // Focal length of the eye-piece, cm
// For Huygen's eye-piece
// As F = f1*f2/(f1 + f2 - d) and f1 = 3*f; f2 = f; d = 2*f, solving for f
f = poly(0, 'f');
f = roots(3*f*f-F*(3*f+f-2*f));    // Focal length of the eye-lens, cm
d = 2*f(1);    // Distance of separation of two lenses, cm
f1 = 3*f(1);    // Focal length of the first plano-convex lens, cm
f2 = f(1);    // Focal length of the second plano-convex lens, cm
printf("\nFor Huygen eye-piece:");
printf("\nThe focal lengths of the plano-convex lenses are %1.0f cm and %2.0f cm", f1, f2);
printf("\nThe distance between the lenses = %2.0f cm", d);
// For Ramsden eye-piece
// As F = f1*f2/(f1 + f2 - d) and f1 = f; f2 = f; d = 2/3*f, solving for f
f = poly(0, 'f');
f = roots(f*f-12*(f+f-2/3*f));    // Focal length of the eye-lens, cm
d = 2/3*f(1);    // Distance of separation of two lenses, cm
f1 = f(1);    // Focal length of the first plano-convex lens, cm
f2 = f(1);    // Focal length of the second plano-convex lens, cm
printf("\n\nFor Ramsden eye-piece:");
printf("\nThe focal lengths of the plano-convex lenses are %1.0f cm and %2.0f cm", f1, f2);
printf("\nThe distance between the lenses = %5.2f cm", d);

// Result 
// For Huygen eye-piece:
// The focal lengths of the plano-convex lenses are 24 cm and  8 cm
// The distance between the lenses = 16 cm

// For Ramsden eye-piece:
// The focal lengths of the plano-convex lenses are 16 cm and 16 cm
// The distance between the lenses = 10.67 cm 
// The distance between the lenses for Ramsden eye-piece is wrong in the textbook