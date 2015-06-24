// Factor to be multiplied with current
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-22 in page 100

clear; clc; close;

// Given data
V_T=0.0364; // Thermal voltage in V
// Simplified expression for I has been derived
I_25=0.01; // Current at 25 degrees in mA
I_150=2.42; // Current at 150 degrees in mA

// Calculation
printf("At 150 degrees:\n");
I=5792*(exp(0.4/0.0728)-1);
printf("I = %0.0f * Io(25)\n",I);
printf("At 25 degrees:\n");
I=exp(0.4/0.0514)-1;
printf("I = %0.0f * Io(25)\n",I);
R=I_150/I_25;
printf("Factor to be multiplied with current = %0.0f",R);

// Result
// When temp is increased from 25-150 degrees,current has to be multiplied by 242