// Grob's Basic Electronics 11e
// Chapter No. 20
// Example No. 20_2
clc; clear;
// Calculate the Xl of (a) a 10-H L at 60 Hz and (b) a 5-H L at 60 Hz.

// Given  data

f = 60;     // Frequency=60 Hz
L1 = 10;    // Inductor 1=10 H
L2 = 5;     // Inductor 2=5 H
pi = 3.14

Xl1 = 2*pi*f*L1;
disp (Xl1,'The Inductive Reactance in Ohms')

Xl2 = 2*pi*f*L2;
disp (Xl2,'The Inductive Reactance in Ohms')
