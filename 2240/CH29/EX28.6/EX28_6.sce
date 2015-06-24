// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_6
clc; clear;
// A transistor has Beta(dc) of 150 and Ib of 75 uAmps. Calculate Ic.

// Given data

Bdc = 150;          // Beta(dc)=150
Ib = 75*10^-6;      // Base current=75 uAmps

Ic = Bdc*Ib;
disp (Ic,'The Collector Current Ic in Amps')
disp ('i.e 11.25 mAmps')
