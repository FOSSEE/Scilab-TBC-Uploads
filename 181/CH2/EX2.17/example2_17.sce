// Calculate current and voltage 
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-17 in page 97

clear; clc; close;

// Given data
I1=2*10^-6; // Saturation current in A
I2=4*10^-6; // Saturation current in A
Vz=100; // Breakdown voltages are equal
eta=2; // Constant of calculation 

// Calculation
printf("At V=90V,none of the diodes will break down.I is determined by the diode with the smallest I_0\n");
printf("Thus for D1,I = 1 mu-A and for D2,I = -1 mu-A\n");
V2=eta*0.026*log(1-(I1/I2));
printf("(a)V2 = %0.1e V\n",V2);
printf("(b)V1 = -89.964 V");

// Result
// (a) V2 = -36 mV
// (b) V1 = -89.964 V