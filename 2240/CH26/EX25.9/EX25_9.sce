// Grob's Basic Electronics 11e
// Chapter No. 25
// Example No. 25_9
clc; clear;
// An LC circuit resonant at 2000 kHz has a Q of 100. Find the total bandwidth delta f and the edge frequencies f1 and f2.

// Given data

fr = 2000*10^3;         // Resonant frequency=2000 kHertz
Q = 100;                // Magnification factor=100

Bw = fr/Q;
disp (Bw,'The Bandwidth BW or Delta f in Hertz')
disp ('i.e 20 kHz')

f1 = fr-Bw/2;
disp (f1,'The Edge Frequency f1 in Hertz')
disp ('i.e 1990 kHz')

f2 = fr+Bw/2;
disp (f2,'The Edge Frequency f2 in Hertz')
disp ('i.e 2010 kHz')
