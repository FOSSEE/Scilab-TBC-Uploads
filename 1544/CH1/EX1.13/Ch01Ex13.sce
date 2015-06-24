// Scilab code Ex1.13:Pg 19 (2008)
clc; clear;
I = 1.4;           // Electric current, A
t = 900;           // Time for which current flows, s
W = 200000;        // Energy dissipated, J
// Using relation W = V*I*t, solving for V
V = W/( I*t );       // Potential difference, V
// Using relation P = V*I
P = V*I;             // Electric power, W
// From Ohm's law, V = I*R, solving for R
R = V/I;              // Resistance, ohm
printf("\nThe potential difference developed = %5.1f V\nThe power dissipated = %5.1f W\nThe resistance of the circuit = %5.1f ohm", V, P, R)

// Result
// The potential difference developed = 158.7 V
// The power dissipated = 222.2 W
// The resistance of the circuit = 113.4 ohm
