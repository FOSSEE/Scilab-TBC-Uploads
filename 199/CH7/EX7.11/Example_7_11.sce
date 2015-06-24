// Chapter7
// Page.No-279
// Example_7_11
// Phase angle
// Given
clear;clc;
f=1*10^3; // Input frequency in Hz
C=0.01*10^-6; 
R=15.9*10^3;
phi=-2*atand(2*%pi*f*C*R); // Phase angle
printf("\n Phase angle phi is = %.f deg \n",phi) // Result