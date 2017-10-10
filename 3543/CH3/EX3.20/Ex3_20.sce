// Example 3.20 
// Computation of pulse power
// Page no 485

clc;
clear;
close;

// Given data
L=0.1;               // Length of laser
R=0.8;               // Mirror reflectance of end mirror
E=1.7;               // Laser pulse energy
c=3*10^8;            // Velocity of light
t=L/((1-R)*c);         // Cavity life time

// Pulse power
p=E/t;                       

//Display result on command window
printf("\n Pulse power (W)= %0.0f  ",p);

