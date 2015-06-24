// Find static resistance
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-25 in page 103

clear; clc; close;

// Given data
I_0=20*10^-6; // Current in micro A
V_F=0.2; // Forward voltage in V

// Calculation
I=I_0*(exp(40*V_F)-1);
r_dc=(0.0343/(80*10^-6))*exp(0.2/0.0343);

printf("Forward current through the diode = %0.3e A\n",I);
printf("Static resistance = %0.3e ohm",r_dc);

// Result
// Forward current = 59.599 mA
// Static resistance = 0.146 Mohm