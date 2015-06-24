// Grob's Basic Electronics 11e
// Chapter No. 25
// Example No. 25_5
clc;clear;
// A series circuit resonant at 0.4 MHz develops 100 mV across a 250-uH L with a 2-mV input. Calculate Q .

// Given data

Vo = 100*10^-3;     // Output voltage=100 mVolts
Vi = 2*10^-3;       // Input voltage=2 mVolts
L = 250*10^-6;      // Inductor=250 uHenry
f = 0.4*10^6;       // Frequency=0.4 MHertz

Q = Vo/Vi;
disp (Q,'The Magnification factor Q is')
