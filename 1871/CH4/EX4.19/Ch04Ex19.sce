// Scilab code Ex4.19 : Pg:158 (2008)
clc;clear;
x1 = 100;    // Position of eye-piece, cm
x2 = 67;     // Position of first lens, cm
x3 = 34;     // Position of second lens, cm
v1 = x1 - x2;    // Distance between eye-piece and the second position of the lens, cm
u = v1;    
x = x3 - u;    // The reading of the slit on the bench, cm
D = x1 - x;    // The distance between the focal plane of the eye-piece and the plane of the interfering sources, cm
d1 = 0.12;    // Position of the first lens placed between the biprism and the eye-piece, cm
d2 = 0.03;    // Position of the second lens placed between the biprism and the eye-piece, cm
omega = 0.972/10;    // Fringe width, cm
d = sqrt(d1*d2)/2;    // Separation between two virtual sources, cm
Lambda = 2*d*omega/D;    // Wavelength of light used, cm
printf("\nThe distance between the focal plane of the eye-piece and the plane of the interfering sources = %2d cm", D);
printf("\nThe wavelength of light used = %5.3e cm", Lambda);

// Result 
// The distance between the focal plane of the eye-piece and the plane of the interfering sources = 99 cm
// The wavelength of light used = 5.891e-005 cm 