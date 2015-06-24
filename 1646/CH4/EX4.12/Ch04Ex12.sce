// Scilab Code Ex4.12: Page-199  
clc;clear;
// For flint glass
mu_C = 1.665;    // Refractive index of flint glass for C line
mu_F = 1.700;    // Refractive index of flint glass for F line
mu_D = (mu_F+mu_C)/2;    // Refractive index of flint glass for D line
w2 = (mu_F-mu_C)/(mu_D-1);....// Magnitude of the dispersive power of second lens of flint glass
// For crown glass
mu_C = 1.510;    // Refractive index of crown glass for C line
mu_F = 1.536;    // Refractive index of crown glass for F line
mu_D = (mu_F+mu_C)/2;    // Refractive index of flint glass for D line
w1 = (mu_F-mu_C)/(mu_D-1);....// Magnitude of the dispersive power of second lens of crown glass
f = 50;    // Focal length of acromatic doublet, cm
FD = f*(w2-w1)/w2;    // Focal length of D line of the Fraunhofer spectrum due to convex lens of crown glass
FC = FD*(mu_D - 1)/(mu_C - 1);    // Focal length of C component of converging lens, cm
printf("\nThe focal length of C component of converging lens = %4.2f cm", FC);

// Result
// The focal length of C component of converging lens = 1.57 cm 
