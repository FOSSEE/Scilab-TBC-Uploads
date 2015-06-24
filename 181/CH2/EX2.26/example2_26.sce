// Dynamic resistance in forward,reverse direction
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-26 in page 103

clear; clc; close;

// Given data
T=398; // Temperature in K
I_0=80*10^-6; // Current in micro A
eta=1; // Constant
V_F=[-0.2 0.2]; // Forward voltages in Volts
V_T=0.0343; // Thermal voltage in volts

// Calculation
alp=[1 2];
for i=1:2
    R_ac=(V_T/I_0)*exp(V_F(i)/V_T);
    printf("(%0.0f)Dynamic resistance = %0.3e ohm\n",alp(i),R_ac);
end

// Result
// (a) Dynamic resistance in forward direction = 1.258 ohm
// (b) Dynamic resistance in reverse direction = 0.146 Mohm