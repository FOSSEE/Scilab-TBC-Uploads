// Grob's Basic Electronics 11e
// Chapter No. 17
// Example No. 17_5
clc; clear;
// Calculate the instantaneous value of charging current ic produced by a 6 uF C when its potential difference is increased by 50 V in 1 s.

// Given data

C = 6*10^-6;    // Cap=6 uF
dv = 50;        // differential voltage increased by 50 Volts
dt = 1;         // differectial time is 1 sec

ic = C*(dv/dt);
disp (ic,'The Instantaneous Value of Charging Current ic produced in Amps')
disp ('i.e 300 uAmps')
