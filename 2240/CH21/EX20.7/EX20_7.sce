// Grob's Basic Electronics 11e
// Chapter No. 20
// Example No. 20_7
clc; clear;
// At what frequency will an inductance of 1 H have a reactance of 1000 ?

// Given data

Xl = 1000;    // Inductive reactance=1000 Ohms
L = 1;        // Inductor=1 H

f = Xl/(2*%pi*L);
disp (f,'The Frequency in Hertz')
