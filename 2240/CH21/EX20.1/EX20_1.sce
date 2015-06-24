// Grob's Basic Electronics 11e
// Chapter No. 20
// Example No. 20_1
clc; clear;
// How much is Xl of a 6-mH L at 41.67 kHz?

// Given data

f = 41.67*10^3;     // Frequency=41.67 kHz
L = 6*10^-3;        // Inductor=6 mH

Xl = 2*%pi*f*L;
disp (Xl,'The Inductive Reactance in Ohms')
