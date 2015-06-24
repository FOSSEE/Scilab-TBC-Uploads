// Grob's Basic Electronics 11e
// Chapter No. 27
// Example No. 27_10
clc; clear;
// Calculate the maximum rated zener current for a 1 W, 10 V zener.

// Given data

Pzm = 1;        // Power rating of zener= 1 Watts
Vz = 10;        // Voltage rating of zener= 10 Volts

Izm = Pzm/Vz;
disp (Izm,'The Maximum Rated Current of Zener in Amps')
disp ('i.e 100 mAmps')
