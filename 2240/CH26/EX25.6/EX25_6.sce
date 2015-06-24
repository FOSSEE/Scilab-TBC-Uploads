// Grob's Basic Electronics 11e
// Chapter No. 25
// Example No. 25_6
clc; clear;
// What is the ac resistance of the coil in A series circuit resonant at 0.4 MHz develops 100 mV across a 250-uH L with a 2-mV input.

// Given data

Vo = 100*10^-3;     // Output voltage=100 mVolts
Vi = 2*10^-3;       // Input voltage=2 mVolts
L = 250*10^-6;      // Inductor=250 uHenry
f = 0.4*10^6;       // Frequency=0.4 MHertz
pi = 3.14;

Q = Vo/Vi;
Xl = 2*pi*f*L;

rs = Xl/Q;
disp (rs,'The Ac Resistance of Coil in Ohms')
