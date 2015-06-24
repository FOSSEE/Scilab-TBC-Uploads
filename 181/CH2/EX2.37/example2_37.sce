// Find the ideality factor
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-37 in page 112

clear; clc; close;

// Given data
I1=0.5*10^-3; // Diode current in mA at 340mV
I2=15*10^-3; // Diode current in mA at 465mV
kb_T=5*10^-3; // Constant in mV

// Calculation
// After simplifying the current equation we get an expression for eta
eta=5/(2.303*log10(30));

printf("Ideality factor = %0.2f",eta);

// Result
// Ideality factor = 1.47