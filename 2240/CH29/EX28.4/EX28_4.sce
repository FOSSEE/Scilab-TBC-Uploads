// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_4
clc; clear;
// A transistor has the following currents: Ie is 15 mA, Ib is 60 uA. Calculate Alpha(dc).

// Given data

Ie = 15*10^-3;      // Emitter current=15 mAmps
Ib = 60*10^-6;      // Base current=60 uAmps

Ic = Ie-Ib;

Adc = Ic/Ie;
disp (Adc,'The Value of Alpha(dc) is')
