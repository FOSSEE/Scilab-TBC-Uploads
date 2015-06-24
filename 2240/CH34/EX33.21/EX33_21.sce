// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_21
clc; clear;
// Iin is 1.5 mA, R is 1 kOhms, and Rl is 10 kOhms. Calculate Vout.

// Given data

Iin = 1.5*10^-3;    // Input votage=5 Volts
Ri = 1*10^3;        // Input resistance=1 kOhms
Rl = 100;           // Load resistance=100 Ohms

Vo = Iin*Ri;
disp (Vo,'The Output Voltage in Volts')
