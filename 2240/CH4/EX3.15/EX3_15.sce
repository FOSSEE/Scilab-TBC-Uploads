// Grob's Basic Electronics 11e
// Chapter No. 03
// Example No. 3_15
clc; clear;
// How much current is needed for a 24 Ohms Resistor that dissipates 600 W?

// Given data

R = 24;         // Resistance=24 Ohms
P = 600;        // Power=600 Watts

I = sqrt(P/R);
disp (I,'The Current I in Amps')
