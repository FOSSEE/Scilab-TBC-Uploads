// Find the range for R
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-32 in page 110

clear; clc; close;

// Given data
P=250; // Maximum power dissipation in mW
V=15; // Supply voltage in V

// Caluclation
I=(250*10^-3)/5;
printf("Maximum permissible current = %0.3e A\n",I);
printf("10 percent of 50mA = 5mA\n");
I1=I-(5*10^-3);
printf("Maximum current through diode to maintain constant voltage = %0.1e A",I1);

// Result
// Maximum current to maintain constant voltage = 45mA