// Example 1.9.2 page 1.23
// To calculate Numerical aperture and Acceptance angle...

clc;
clear;

n1= 1.5 // RI of core
n2 = 1.48   // RI of cladding..

NA = sqrt((n1^2)-(n2^2));
printf('The Numerical Aperture is  %.2f',NA);

phiA = asind(NA);
printf('\n\nThe Critical angel is  %.2f degrees',phiA);
