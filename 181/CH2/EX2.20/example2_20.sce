// Leakage resistance shunting the diode
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-20 in page 99

clear; clc; close;

// Given data
// Kirchoff's law has been applied and equations solved to get final expression

// Calculation
I_R=(0.08*5*10^-6)/0.15;
R=10/I_R;
printf("Leakage resistance = %0.2e Mohm",R);

// Result
// Leakage resistance shunting the diode = 3.75 Mohm