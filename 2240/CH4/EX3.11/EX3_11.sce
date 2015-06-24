// Grob's Basic Electronics 11e
// Chapter No. 03
// Example No. 3_11
clc; clear;
// Calculate the power in a circuit where the source of 100 V produces 2 A in a 50 Ohms Resistor.

// Given data

I = 2;          // Current=2 Amps
R = 50;         // Resistance=50 Ohms
V = 100;        // Voltage Source=100 Volts

P = I*I*R;
disp (P,'The Power in Watts')
