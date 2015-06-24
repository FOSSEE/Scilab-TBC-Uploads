// Scilab Code Ex4.2: Page:191 (2011) 
clc;clear;
r = 1;  // For convenience assume radius of the circle to be unity, unit
alpha = 0.8*r;  // Distance of light source from the centre of the spherical shell, unit
cos_phi_by_2 = sqrt((alpha+1)/(4*alpha));
printf("\ncos(phi/2) = %d/4", cos_phi_by_2*4);

// Result
// alpha^2+1-2*alpha*cosine('phi')


