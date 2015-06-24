// Grob's Basic Electronics 11e
// Chapter No. 14
// Example No. 14_3
clc; clear;
// A coil with 400 turns must provide 800 A t of magnetizing force. How much current is necessary?

// Given data

mmf = 800;    // Magnetizing Force=800 A.t
N = 400;      // No. of Turns=400

I = mmf/N;
disp (I,'The Current necessary in Amps')
