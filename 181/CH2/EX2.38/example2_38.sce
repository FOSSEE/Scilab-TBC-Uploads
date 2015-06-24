// Temperature coefficient of Avalanche diode
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-38 in page 113

clear; clc; close;

// Given data
V=12; // Voltage of avalanche diode in V
T=1.7*10^-3; // Temperature coeff of Si diode

// Calculation
A=(T/V)*100;
printf("Temperature coeff in percentage = %0.4f percent/degree-C",A);

// Result
// Temperature coeff in percentage = 0.0142 %/degree-C