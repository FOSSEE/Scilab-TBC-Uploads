// Calculate the ripple factor
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-17 in page 161

clear; clc; close;

// Given data
Rl=3.15*10^3; // Load resistance in K-ohms
Rf=20; // Internal resistance in ohms
Vm=230; // Maximum voltage in volts
f=50; // Frequency in Hertz

// Calculation
Irms=0.707*(Vm/(Rl+Rf));
Idc=0.637*(Vm/(Rl+Rf));
gamma_fwr=sqrt((Irms/Idc)^2-(1));

printf("Ripple factor = %0.2f",gamma_fwr);

// Result
// Ripple factor = 0.48