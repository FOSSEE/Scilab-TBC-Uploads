// Calculate break region
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-3 in page 145

clear; clc; close;

// Given data
R=10^4; // Factor multiplied with dynamic resistance of diode
Vt=26; // Thermal voltage in volts
eta1=2; // Constant at room temperature for Si
eta2=1; // Constant at room temperature for Ge

// Calculation
printf("r1/r2 = 10^4\n");
V1=eta1*Vt*4*2.3;
V2=eta2*Vt*4*2.3;
printf("Break region for silicon = %0.0f mV\n",V1);
printf("Break region for Germanium = %0.0f mV",V2);

// Result
// Break region for silicon = 478 mV
// Break region for Germanium = 239 mV 