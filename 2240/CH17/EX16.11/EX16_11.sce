// Grob's Basic Electronics 11e
// Chapter No. 16
// Example No. 16_11
clc; clear;
// The high-voltage circuit for a color picture tube can have 30 kV across 500 pF of C . Calculate the stored energy.

// Given data

V = 30*10^3;         // Voltage=30 kVolts
C = 500*10^-12;      // Cap=500 pFarad

E = 0.5*C*V*V
disp (E,'The Energy Stored in Joules')
