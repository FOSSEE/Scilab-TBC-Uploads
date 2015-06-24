// Example 1.9.5 page 1.25
// To calculate critical angle accepatance angle and numerical aperture..

clc;
clear;

n1 = 1.4;       //RI of Core..
n2 = 1.35;      //RI of Cladding

phiC = asind(n2/n1);           //Critical angle..
printf('The Critical angel is  %.2f degrees',phiC);

NA = sqrt(n1^2-n2^2);       // numerical Aperture...
printf('\n\nThe Numerical Aperture is %.2f',NA);

phiA = asind(NA);       // Acceptance angle...  
printf('\n\nThe Acceptance angel is  %.2f degrees',phiA);
