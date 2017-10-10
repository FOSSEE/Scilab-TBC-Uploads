// Exa 11.4

clc;
clear all;

// Given data
// Refering Fig. 11.12(page no.315)- Kelvin's bridge

Ra_b=1000;// The ratio of Ra to Rb
R1= 5; // in Ohms

// Solution

// We have R1=0.5*R2
R2=R1/0.5;

//From the eqation for Kelvin'd bridge- Rx*Ra=Rb*R2
Rx=R2*(1/1000); // Unknown resistance
printf(' The value of Rx = %.2f Ohm \n ',Rx);
