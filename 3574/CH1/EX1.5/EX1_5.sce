// Example 1.5
// Computation of length of conductor
// Page No. 25

clc;
clear all;
close;

// Given data
e=2.5;                 // Voltage generated
B=1.2;                // Magnetic field
v=8.0;                 // Speed

//  Length of conductor (e=B*l*v)
l=e/(B*v);

//Display result on command window
printf("\n Length of conductor  = %0.2f m ",l);
