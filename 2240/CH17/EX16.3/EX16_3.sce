// Grob's Basic Electronics 11e
// Chapter No. 16
// Example No. 16_3
clc; clear;
// A constant current of 2 uA charges a capacitor for 20 s. How much charge is stored? Remember I=Q/t or Q=I*t.

// Given data

I = 2*10^-6;        // Current=2 uAmps
t = 20;             // Time=20 Sec

Q = I*t
disp (Q,'The Charge Stored in Columb')
disp ('i.e 40*10^-6 Columbs OR 40 uColumb')
