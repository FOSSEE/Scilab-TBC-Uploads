// Calculate Base and Collector Currents
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 4-1 in page 208

clear; clc; close;

// Given Data
alpha=0.90; // Current Gain in CB mode
Ico=15*10^-6; // Reverse saturation Current in micro-A
Ie=4*10^-3; // Emitter Current in mA

// Calculations
Ic=Ico+(alpha*Ie);
Ib=Ie-Ic; 

printf("(a)The value of the Base Current is %0.2e A \n",Ib);
printf("(b)The value of the Collector Current is %0.3e A \n",Ic);

// Results
// (a) The value of the Base Current is 385 mu-A
// (b) The value of the Collector Current is 3.615 mA