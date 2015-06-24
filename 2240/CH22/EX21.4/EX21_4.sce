// Grob's Basic Electronics 11e
// Chapter No. 21
// Example No. 21_4
clc; clear;
// A 200 uH coil has a Q of 40 at 0.5 MHz. Find Re.

// Given data

L = 200*10^-6;  // L of coil=200 uHenry
Q = 40;         // Q=40
f = 0.5*10^6;   // Frequency=0.5 MHz
pi = 3.14;

Xl = 2*pi*L*f;

Re = Xl/Q;
disp (Re,'The AC Effective Resistance in Ohms')
