// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_2
clc; clear;
// The current in an inductor changes by 50 mA in 2 us. How much is the di/dt rate of current change in amperes per second?

// Given data

di = 50*10^-3;    // Differential current=50 mAmps
dt = 2*10^-6;     // Differential time=2 usec

A = di/dt;
disp (A,'The di/dt Rate of Current change in A/s')
