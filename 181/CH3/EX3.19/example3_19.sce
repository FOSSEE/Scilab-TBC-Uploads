// Find maximum dc voltage
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-19 in page 162

clear; clc; close;

// Given data
Vp=220; // Peak voltage in V
f=50; // Frequency in Hz
Rl=1.5*10^3; // Load resistance in ohms
N=0.1; // Turn ratio

// Calculation
Vs=Vp*N;
Vrms=Vs*sqrt(2);
Vm=Vrms/2;
Idc=(2*Vm)/(%pi*Rl);
Vdc=Idc*Rl;
printf("Maximum dc output voltage = %0.2f V",Vdc);

// Result
// Dc output voltage = 9.9 V