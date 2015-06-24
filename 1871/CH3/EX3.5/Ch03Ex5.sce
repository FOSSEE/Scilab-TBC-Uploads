// Scilab code Ex3.5 : Pg:98 (2008)
clc;clear;
d = 10;    // Distance of separation of two lenses, cm
// As 2*f1 = d, solving for f1
f1 = d/2;    // Focal length of the first plano-convex lens, cm
f2 = 3*f1;    // Focal length of the second plano-convex lens, cm
F = f1*f2/(f1 + f2 - d);    // Focal length of the eye-piece, cm
printf("\nThe focal lengths of the plano-convex lenses are %1.0f cm and %2.0f cm", f1, f2);
printf("\nThe focal length of the eye-piece = %3.1f cm", F);

// Result 
// The focal lengths of the plano-convex lenses are 5 cm and 15 cm
// The focal length of the eye-piece = 7.5 cm 