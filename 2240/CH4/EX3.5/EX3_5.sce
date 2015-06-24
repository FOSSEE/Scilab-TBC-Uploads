// Grob's Basic Electronics 11e
// Chapter No. 03
// Example No. 3_5
clc; clear;
// The I of 8 mA flows through a 5-kOhms Resistor. How much is the IR voltage?

// Given data

I = 8*10^-3;        // Current flowing through Resistor=8m Amps
R = 5*10^3;         // Resistance=5k Ohms

V = I*R;
disp (V,'The Voltage in Volts')
