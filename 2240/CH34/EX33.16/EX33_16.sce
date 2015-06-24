// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_16
clc; clear;
// Calculate the cutoff frequency, fc.

// Given data

Rf = 10*10^3;       // Feedback resistance=10 kOhms
Cf = 0.01*10^-6;    // Feedback capacitance=0.01 uFarad

fc = 1/(2*%pi*Rf*Cf);
disp (fc,'The Cutoff Frequency in Hertz')
disp ('i.e 1.591 kHz')
