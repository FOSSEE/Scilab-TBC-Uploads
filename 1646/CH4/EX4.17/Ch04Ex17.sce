// Scilab Code Ex4.17: Page-203  (2011)
clc;clear;
mu = 1.52;....// Refractive index of aplanatic surface
R = 30;....// Radius of curvature, cm
R1 = R/mu;....// First radius of the aplanatic surface, cm 
printf("\nR1 = %5.2f cm", R1);
R2 = R*mu;....// Second radius of the aplanatic surface, cm 
printf("\nR2 = %4.1f cm", R2); 
//Since the image of an object at one aplanatic point will be formed by the sphere at the other aplantic point,so the  is
m = mu^2;    // The lateral magnification of the image
printf("\nThe lateral magnification of the image = %4.2f", m);

// Result
// R1 = 19.74 cm
// R2 = 45.6 cm
// The lateral magnification of the image = 2.31 
