// Scilab code Ex1.10: Pg 16 (2008)
clc; clear;
E = 12;        // E.m.f, V
I = 5;         // Electric current, A
V = 11.5;       // Terminal potential difference, V
// Using relation V = E - I*r, solving for r
r = ( E - V )/I;     // Internal resistance of battery, ohm
// From Ohm's law, V = I*R, then solving for R
R = V/I;              // Resistance, ohms
printf("\nThe internal resistance of battery = %3.1f ohm", r)
printf("\nThe resistance of external circuit = %3.1f ohm", R)

// Result
// The internal resistance of battery = 0.1 ohm
// The resistance of external circuit = 2.3 ohm
