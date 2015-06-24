// Grob's Basic Electronics 11e
// Chapter No. 17
// Example No. 17_7
clc; clear;
// Calculate ic produced by a 250-pF capacitor for a change of 50 V in 1 us.

// Given data

C = 250*10^-12;    // Cap=250 pF
dv = 50;           // differential voltage increased by 50 Volts
dt = 1*10^-6;      // differectial time is 1 usec

ic = C*(dv/dt);
disp (ic,'The Instantaneous Value of ic produced in Amps')
disp ('12500 uAmps or 12.5 mAmps')
