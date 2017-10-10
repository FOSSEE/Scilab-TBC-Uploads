// Exa 11.9

clc; 
clear all;

// Given data

// Refering Fig. 11.26(page no.328) - an AC bridge(SCHERING'S BRIDGE)

R1= 1; // k Ohms
C1=0.5; // micro farads
R2=2; // k Ohms
C3=0.5; // micro farads
f= 1000; // Hz

// Solution
// Using Equations 11.20(a) and 11.20(b) given on page no. 328 we get value Rx and Cx

Rx=C1/C3*R2;// in k Ohms
Cx=R1/R2 * C3; // in micro farads

D=2*%pi*f*Cx*10^-6*Rx*10^3; // Dissipation factor

printf(' The unknown capacitance Cx is equal to %.2f micro farads\n ',Cx);
printf(' The dissipation factor = %.4f \n ',D);

