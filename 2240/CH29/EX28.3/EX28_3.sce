// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_3
clc; clear;
// A transistor has the following currents: Ie is 50 mA, Ic is 49 mA. Calculate Ib.

// Given data

Ie = 50*10^-3;      // Emitter current=50 mAmps
Ic = 49*10^-3;      // Collector current=20 mAmps

Ib = Ie-Ic;
disp (Ib,'The Base Current Ib in Amps')
disp ('i.e 1 mAmps')
