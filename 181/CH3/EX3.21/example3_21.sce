// Calculate inductance for L-section filter
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-21 in page 163

clear; clc; close;

// Given data
C=40*10^-6; // Capacitance in micro-F
r=0.0001; // Ripple factor
Vm=40; // Maximum voltage in V
Idc=0.1; // DC current in A
R=40; // Circuit resistance in ohms

// Calculation
L=(1.76/C)*sqrt(0.472/r);
Vdc=((2*sqrt(2)*Vm)/%pi)-(Idc*R);

printf("(a)Inductance L = %0.2e H\n",L);
printf("(b)Output voltage = %0.0f V",Vdc);

// Result
// (a) L = 3.02*10^6 H
// (b) V_dc = 32 V