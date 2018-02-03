// Exa 7.6

clc;
clear;

// Given

S = 1400; // Stress in Kgf/cm^2
E = 2.1*10^6; // Youngs Modulus in Kgf/cm^2
G = 2; // Gauge factor

// Solution

e = S/E;
change_in_R = G*e;

printf(' Percentage change in resistance of strain gauge = %.3f \n',change_in_R*100);

// The answer provided in the textbook vary due to round off
