// Limits for varying V
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-39 in page 113

clear; clc; close;

// Given data
I_d=5*10^-3; // Diode current in mA
R=2.5*10^3; // Resistance in K-ohm
I_T=40*10^-3; // Diode current in mA

// Calculation
I_max=I_T-I_d;
printf("(a)I_max = %0.2e A\n",I_max);
printf("(b)Minimum I_d for good regulation is 5 mA,hence I_T=30 mA\n");
V_max1=(30*3.5)+60;
printf("V_max = %0.0f V\n",V_max1);
printf("Maximum I_d for good regulation is 40 mA,hence I_T=65 mA\n");
V_max2=(65*3.5)+60;
printf("V_max = %0.1f V",V_max2);

// Result
// (a) I_max = 35 mA
// (b) V_max1 = 165 V 
// (c) V_max2 = 287.5 V