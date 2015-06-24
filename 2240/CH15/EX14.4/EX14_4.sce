// Grob's Basic Electronics 11e
// Chapter No. 14
// Example No. 14_4
clc; clear;
// The wire in a solenoid of 250 turns has a resistance of 3 Ohms. (a)How much is the current when the coil is connected to a 6-V battery? (b) Calculate the ampereturns of mmf.

// Given data

V = 6;             // Voltage=6 Volts
R = 3;             // Resistance=3 Ohms
N = 250;           // No. of Turns=250

I = V/R;
disp (I,'The Current necessary when a wire is connected to 6-V Battery in Amps')

mmf = I*N;
disp (mmf,'The Amps-Turn (A.t) of Magneto-Motive Force (mmf) in A.t')
