// Maximum forward current,forward resistance
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-28 in page 104

clear; clc; close;

// Given data
P_max=2.5; // Maximum power in watt
V_f=0.9; // Forward voltage in V
I_max=2.2; // Maximum current in A

// Calculation
I_fmax=P_max/V_f;
R_f=P_max/(I_max)^2;

printf("(a)Maximum forward current = %0.2f A\n",I_fmax);
printf("(b)Forward diode resistance = %0.3f ohm",R_f);

// Result
// Forward current = 2.78 A
// Diode forward resistance = 0.517 ohm