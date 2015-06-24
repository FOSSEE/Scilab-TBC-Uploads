// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_15
clc; clear;
// Calculate the primary current I P if the secondary current Is equals its rated value of 2 A.

// Given data

vs = 25.2;      // Secondary voltage=25.2 Volts
vp = 120;       // Primary voltage=120 Volts
Is = 2;         // Secondary current=2 Amps

Ip = Is*(vs/vp);
disp (Ip,'The Primary current in Amps')
disp ('OR 420 mAmps')
