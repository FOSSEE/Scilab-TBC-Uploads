// Grob's Basic Electronics 11e
// Chapter No. 25
// Example No. 25_4
clc; clear;
// What value of L resonates with a 106-pF C at 1000 kHz, equal to 1 MHz?

// Given data

C = 106*10^-12;     // Capacitor=106 pFarad
fr = 1*10^6;        // Resonant frequency=1 MHertz

A = %pi*%pi;          // pi square
B = fr*fr;          // Resonant frequency square

C = 1/(4*A*B*C);
disp (C,'The value of Inductor in Henry')
disp ('i.e 239 uF')
