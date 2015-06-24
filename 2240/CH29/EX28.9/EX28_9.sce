// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_9
clc; clear;
// Calculate Pd if Vcc is 10 V and Ib is 50 uAmps. Assume Beta(dc) is 100.

// Given data

Bdc = 100;          // Beta(dc)=100
Ib = 50*10^-6;      // Base current=50 uAmps
Vcc = 10;           // Supply voltage=10 Volts

Vce = Vcc

Ic = Bdc*Ib;

Pd = Vce*Ic;
disp (Pd,'The Power Dissipation in Watts')
disp ('i.e 50 mWatts')
