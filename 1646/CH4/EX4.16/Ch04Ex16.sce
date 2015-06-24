// Scilab Code Ex4.16: Page-202  (2011)
clc;clear;
mu = 1.6;....// Refractive index of aplanatic surface
R = 3.2;....// Radius of curvature, cm
R1 = R/mu;....// First radius of the aplanatic surface, cm 
printf("\nR1 = %3.1f cm", R1);
R2 = R*mu;....// Second radius of the aplanatic surface, cm 
printf("\nR2 = %4.2f cm", R2); 
//Since the image of an object at one aplanatic point will be formed by the sphere at the other aplantic point,so the  is
m = mu^2;    // The lateral magnification of the image
printf("\nThe lateral magnification of the image = %4.2f", m);

// Result
// R1 = 2.0 cm
// R2 = 5.12 cm
// The lateral magnification of the image = 2.56 
