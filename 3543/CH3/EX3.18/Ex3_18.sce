// Example 3.18 
// Calculation of total power emitted
// Page no 485

clc;
clear;
close;

//Given data
r=0.7;            // Emissivity
r0=5.67*10^-8;    // Stephen's constant
A=10^-4;          // Surface area
T=2000;           // Temperature

// Total power emitted
P=r*r0*A*T^4;                     

//Display result on command window
printf("\n Total power emitted (Watts)= %0.1f  ",P);

