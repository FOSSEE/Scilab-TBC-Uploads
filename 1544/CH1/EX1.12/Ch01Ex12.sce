// Scilab code Ex1.12: Pg 18 (2008)
clc; clear;
R = 680;          // Resistance, ohms
P = 85e-03;           // Electric power, W
// Using P = V^2/R, solving for V
V = sqrt( P*R );       // Potential difference, V
// Using P = I^2*R, solving for I
I = sqrt( P/R );        // Electric current, A
printf("\nThe potential difference developed across the resistance = %3.1f V\nThe current flowing through the resistor = %5.2f mA", V, I/1e-03)

// Result
// The potential difference developed across the resistance = 7.6 V
// The current flowing through the resistor = 11.18 mA
