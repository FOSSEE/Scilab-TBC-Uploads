clear all; clc;
//This numerical is Ex 2_3,page 19.

// This numerical is used an example to teach conversion factors

rho=0.85*62.4
p=50//in psi
g=32.2
disp("Since pressure is the product of density,gravitaional accelaration and head, we can convert pressure in psi to head in ft using suitable conversion factors.")
H=p*144/( (rho/32.2)*32.2)
printf("The value of head H is given by %0.1f lb/ft^2/((slug/ft^3)*(ft/s^2))",H)
printf("\nThus the value of H is equal to %0.1f ft",H)
