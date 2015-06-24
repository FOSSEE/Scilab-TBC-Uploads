// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_4
clc; clear;
// How much is the inductance of a coil that induces 1000 V when its current changes at the rate of 50 mA in 2us?

// Given data

Vl = 1000;      // Induced voltage=1000 Volts
di = 50*10^-3;  // differential current=50 mAmps
dt = 2*10^-6;   // differential time=2 usec

A = di/dt;

L = Vl/A;
disp (L,'The Value of Inductance in Henry')
disp ('OR 40 mH')
