// Grob's Basic Electronics 11e
// Chapter No. 17
// Example No. 17_4
clc; clear;
// At what frequency will a 10 uF capacitor have Xc equal to 100 Ohms?

// Given data

Xc = 100; // Capacitive Reactance=100 Ohms
C = 10*10^-6; // Cap=10 uF

f = 1/(2*%pi*C*Xc);
disp (f,'The Frequency in Hertz')
disp ('appox 159 Hz')
