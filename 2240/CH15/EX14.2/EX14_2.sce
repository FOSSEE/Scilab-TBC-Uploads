// Grob's Basic Electronics 11e
// Chapter No. 14
// Example No. 14_2
clc; clear;
// A coil with 4 A is to provide a magnetizing force of 600 A t. How many turns are necessary?

// Given data

I = 4;        // Current=4 Amps
mmf = 600;    // Magnetizing Force=600 A.t

N = mmf/I;
disp (N,'The Turns necessary are')
