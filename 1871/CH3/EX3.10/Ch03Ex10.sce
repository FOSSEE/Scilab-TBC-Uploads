// Scilab code Ex3.10 : Pg:113 (2008)
clc;clear;
omega1 = 0.02;    // Dispersive power of the convex lens
omega2 = 0.04;    // Dispersive power of the concave lens
f2 = -80;    // Focakl length of the concave lens, cm
// As omega1/omega2 = -f1/f2, solving for f1
f1 = -omega1/omega2*f2;    // Focal length of the crown glass convex lens, cm
printf("\nThe focal length of the crown glass convex lens = %2.0f cm", f1);

// Result 
// The focal length of the crown glass convex lens = 40 cm 