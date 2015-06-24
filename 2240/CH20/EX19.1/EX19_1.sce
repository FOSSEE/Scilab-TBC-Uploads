// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_1
clc; clear;
// The current in an inductor changes from 12 to 16 A in 1s. How much is the di/dt rate of current change in amperes per second?

// Given data

di = 4;     // Differential current=16-12=4 Amps
dt = 1;     // Differential time=1 sec

A = di/dt;
disp (A,'The di/dt Rate of Current change in A/s')
