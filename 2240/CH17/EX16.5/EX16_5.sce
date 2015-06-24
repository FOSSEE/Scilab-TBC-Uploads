// Grob's Basic Electronics 11e
// Chapter No. 16
// Example No. 16_5
clc; clear;
// A constant current of 5 mA charges a 10 uF capacitor for 1 s. How much is the voltage across the capacitor?

// Given data

I = 5*10^-3;       // Current=5 mAmps
t = 1;             // Time=1 Sec
C = 10*10^-6;      // Cap=10 uFarad

Q = I*t;

V = Q/C;
disp (V,'The Voltage across Capacitor in Volts')
