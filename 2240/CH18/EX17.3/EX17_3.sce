// Grob's Basic Electronics 11e
// Chapter No. 17
// Example No. 17_3
clc; clear;
// What C is needed for Xc of 100 Ohms at 3.4 MHz?

// Given data

f = 3.4*10^6;   // Frequency=3.4 MHz
Xc = 100; // Capacitive Reactance=100 Ohms

C = 1/(2*%pi*f*Xc);
disp (C,'The Capacitance in Farads')
disp ('appox 468 pF')
