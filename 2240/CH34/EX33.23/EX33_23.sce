// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_23
clc; clear;
// Rl is 1 kOhms and the frequency of the input voltage equals 100 Hz. Calculate the minimum value of C required.

// Given data

f = 100;        // Applied frequency=100 Hertz
Rl = 1*10^3;    // Load resistance=1 kOhms

T = 1/f;

C = (10*T)/Rl;
disp (C,'The Minimum value of required Capacitor in Farads')
disp ('i.e 100 uFarad')
