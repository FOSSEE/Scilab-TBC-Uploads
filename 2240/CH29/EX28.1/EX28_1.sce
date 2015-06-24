// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_1
clc; clear;
// A transistor has the following currents: Ib is 20 mA and Ic is 4.98 A. Calculate Ie.

// Given data

Ib = 20*10^-3;      // Base current=20 mAmps
Ic = 4.98;          // Collector current=4.98 Amps

Ie = Ic+Ib;
disp (Ie,'The Emitter Current Ie in Amps')
