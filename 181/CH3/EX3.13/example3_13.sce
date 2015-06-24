// Find maximum value of ac voltage
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-13 in page 160

clear; clc; close;

// Given data
Vdc=30; // DC voltage in V
Rf=25; // Internal resistance in ohms
Rl=500; // Load resistance in ohms

// Calculation
Idc=Vdc/Rl;
Im=%pi*Idc;
Vi=Im^2*(Rf+Rl);
printf("Voltage required at the input = %0.2f V",Vi);

// Result
// Voltage required at the input is = 18.65 V