// Grob's Basic Electronics 11e
// Chapter No. 25
// Example No. 25_8
clc; clear;
// A parallel LC circuit tuned to 200 kHz with a 350-uH L has a measured ZEQ of 17,600. Calculate Q.

// Given data

L = 350*10^-6;      // Inductor=350 uHenry
f = 200*10^3;       // Frequency=200 kHertz
Zeq = 17600;        // Equivalent Impedence=17600 Ohms

Xl = 2*%pi*f*L;

Q = Zeq/Xl;
disp (Q,'The Magnification factor Q is')
