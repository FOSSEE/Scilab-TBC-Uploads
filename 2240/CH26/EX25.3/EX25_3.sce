// Grob's Basic Electronics 11e
// Chapter No. 25
// Example No. 25_3
clc; clear;
// What value of C resonates with a 239-uH L at 1000 kHz?

// Given data

L = 239*10^-6;      // Inductor=239 uHenry
fr = 1000*10^3;     // Resonant frequency=1000 kHertz

A = %pi*%pi;          // pi square
B = fr*fr;          // Resonant frequency square

C = 1/(4*A*B*L);
disp (C,'The value of Capacitor in Farads')
disp ('i.e 106 pF')
