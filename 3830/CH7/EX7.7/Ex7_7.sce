// Exa 7.7

clc;
clear;

// Given

Gf = 2 ; // Gauge factor of strain gauge
S = 1000; // Stress in kg/cm^2
E = 2*10^6; // Youngs Modulus in kg/cm^2

// Solution

e = S/E; // strain

dR_R = e*Gf; // change in resistance
 // Gf = 1+2u;
// Therefore
u = (Gf-1)/2; // poissons ratio

printf('The percentage change in resistance of strain gauge = %.1f \n',dR_R*100);
printf(' Poissons ratio  = %.2f \n',u);
