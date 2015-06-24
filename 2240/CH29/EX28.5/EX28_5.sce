// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_5
clc; clear;
// A transistor has the following currents: Ic is 10 mA and Ib is 50 uA. Calculate Beta(dc).

// Given data

Ic = 10*10^-3;      // Collector current=10 mAmps
Ib = 50*10^-6;      // Base current=50 uAmps

Bdc = Ic/Ib;
disp (Bdc,'The Value of Beta(dc) is')
