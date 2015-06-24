// Find voltage gain,output impedance
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-11 in page 320

clear; clc; close;

// Given data
// The Thevenin equivalent of fig. is derived

// Calculation
A=(9.5*10)/(10+20);
R_0=(1/(10*10^3))+(1/(20*10^3));
R=1/R_0;
printf("(a)Voltage gain = %0.2f\n",A);
printf("(b)Output impedance = %0.2e",R);

// Result
// (a) A = 3.17
// (b) R_0 = 6.67 K