// Grob's Basic Electronics 11e
// Chapter No. 03
// Example No. 3_12
clc; clear;
// Calculate the power in a circuit where the source of 100 V produces 4 A in a 25 Ohms Resistor.

// Given data

I = 4;          // Current=4 Amps
R = 25;         // Resistance=25 Ohms
V = 100;        // Voltage Source=100 Volts

P = I*I*R;
disp (P,'The Power in Watts')
