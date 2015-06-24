// Find dc output,Peak inverse voltage
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-11 in page 159

clear; clc; close;

// Given data
Vi=220; // AC input voltage in V
N=10; // Turn ratio of transformer

// Calculation
V2=Vi/N;
Vm=sqrt(2)*V2;
V_dc=0.318*Vm;
PIV=Vm;

printf("(a)DC output voltage = %0.2f V\n",V_dc);
printf("(b)PIV = %0.2f V",Vm);

// Result
// (a) Dc output voltage = 9.89V
// (b) PIV = 31.11 V