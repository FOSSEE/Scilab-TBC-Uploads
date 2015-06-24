// Grob's Basic Electronics 11e
// Chapter No. 20
// Example No. 20_3
clc; clear;
// Calculate the Xl of a 250-uH coil at (a) 1 MHz and (b) 10 MHz.

// Given data

f1 = 1*10^6;    // Frequency1=1 MHz
f2 = 10*10^6;   // Frequency2=10 MHz
L = 250*10^-6;  // Inductor=250 uH
pi = 3.14;

// For 1 Mhz

Xl1 = 2*pi*f1*L;
disp (Xl1,'The Inductive Reactance in Ohms')

// For 10 Mhz

Xl2 = 2*pi*f2*L;
disp (Xl2,'The Inductive Reactance in Ohms')
