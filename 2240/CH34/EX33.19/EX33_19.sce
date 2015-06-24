// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_19
clc; clear;
// Calculate the cutoff frequency, fc.

// Given data

Ri = 1*10^3;       // Input resistance=10 kOhms
Ci = 0.1*10^-6;    // Input capacitance=0.01 uFarad

fc = 1/(2*%pi*Ri*Ci);
disp (fc,'The Cutoff Frequency in Hertz')
disp ('i.e 1.591 kHz')
