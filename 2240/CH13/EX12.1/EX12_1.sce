// Grob's Basic Electronics 11e
// Chapter No. 12
// Example No. 12_1
clc; clear;
// Calculate ri if the output of a generator drops from 100 V with zero load current to 80 V when Il is 2 A.

// Given data

Vo0 = 100;      // Vo at zero load current=100 Volts
Vo1 = 80;       // Vo at 2 A load current=80 Volts
Il = 2;         // Load current=2 Amps

Ri = (Vo0-Vo1)/Il;
disp (Ri,'The Resistance ri in Ohms')
