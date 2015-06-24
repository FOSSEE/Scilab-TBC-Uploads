// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_2
clc; clear;
// A transistor has the following currents: Ie is 100 mA, Ib is 1.96 mA. Calculate Ic.

// Given data

Ie = 100*10^-3;      // Emitter current=100 mAmps
Ib = 1.96*10^-3;     // Base current=4.98 Amps

Ic = Ie-Ib;
disp (Ic,'The Collector Current Ic in Amps')
disp ('i.e 98.04 mAmps')
