// Grob's Basic Electronics 11e
// Chapter No. 25
// Example No. 25_10
clc; clear;
// An LC circuit resonant at 6000 kHz has a Q of 100. Find the total bandwidth delta f and the edge frequencies f1 and f2.

// Given data

fr = 6000*10^3;         // Resonant frequency=6000 kHertz
Q = 100;                // Magnification factor=100

Bw = fr/Q;
disp (Bw,'The Bandwidth BW or Delta f in Hertz')
disp ('i.e 60 kHz')

f1 = fr-Bw/2;
disp (f1,'The Edge Frequency f1 in Hertz')
disp ('i.e 5970 kHz')

f2 = fr+Bw/2;
disp (f2,'The Edge Frequency f2 in Hertz')
disp ('i.e 6030 kHz')
