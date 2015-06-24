// Find the value of Rs
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-23 in page 329

clear; clc; close;

// Given data
Vgs=1.5; // Gate-source voltage in V
Id=2*10^-3; // Drain saturation current in mA

// Calculation
Rs=Vgs/Id;
printf("Rs = %0.0f ohm",Rs);

// Result
// Rs = 750 ohm