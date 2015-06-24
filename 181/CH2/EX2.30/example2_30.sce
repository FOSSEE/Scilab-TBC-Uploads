// Dynamic resistance in forward,reverse direction
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-30 in page 105

clear; clc; close;

// Given data
V_T=0.0343; // Thermal voltage at 398K in V
eta=1; // Constant for Ge

// Calculation
// Final expression for r derived after differentiating w.r.t V
r1=((35*10^-6)/(34.3*10^-3))*exp(5.83);
A1=1/r1;
r2=3.185*10^-6
A2=1/r2;

printf("(a)Dynamic resistance in forward direction = %0.3f ohm\n",A1);
printf("(b)Dynamic resistance in reverse direction = %0.3e ohm",A2);

// Result
// (a) Resistance in forward direction = 2.879 ohm
// (b) Resistance in reverse direction = 0.314 Mohm