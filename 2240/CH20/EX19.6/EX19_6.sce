// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_6
clc; clear;
// The current through a 200-mH L changes from 0 to 100 mA in 2 us. How much is Vl ?

// Given data

L = 200*10^-3;      // Inductor=200 mH
di = 100*10^-3;     // differential current=100 mAmps
dt = 2*10^-6;       // differectial time=2 usec

A = di/dt;

Vl = L*A;
disp (Vl,'The Value of Self-Induced Voltage in Volts')
disp ('OR 10 kVolts')
