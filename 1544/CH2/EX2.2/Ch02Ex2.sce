// Scilab code Ex2.2: Pg 34 (2008)
clc; clear;
E = 12;                 // E.m.f of battery, V
R_BC = 16;               // Resistance across branch BC, ohms
P_BC = 4;                // Electric power dissipated by resistance R_BC, W
// using relation P = I^2/R, solving for I
I = sqrt( P_BC/R_BC);     // Electric current,A
R = E/I;                   // Total circuit resistance, ohms
R_AB = R - R_BC;            // Resistance across branch AB, ohms
printf("\nThe circuit current = %3.1f A\nThe value of other resistor = %1d ohms", I, R_AB);

// Result
// The circuit current = 0.5 A
//The value of other resistor = 8 ohms
