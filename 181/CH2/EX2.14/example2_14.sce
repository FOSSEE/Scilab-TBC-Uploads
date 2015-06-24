// Calculate the current flowing
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-14 in page 96

clear; clc; close;

// Given data
I_0=9*10^-7; // Current flowing in A
V=0.1; // Applied forward bias in V

// Calculation
I=I_0*(exp(40*V)-1);
printf("Current flowing through diode = %0.2e A",I);

// Result
// Current flowing through the diode under forward bias = 48.15 mu-A