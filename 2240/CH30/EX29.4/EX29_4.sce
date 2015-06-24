// Grob's Basic Electronics 11e
// Chapter No. 29
// Example No. 29_4
clc; clear;
// Assume that re varies from 3.33 Ohms to 6.67 Ohms as the temperature of the transistor changes. Calculate the variation in the voltage gain, Av.

// Given data

rl = 600;       // Load resistance=600 Ohms
re = 6.67;      // Internal emitter resistance=6.67 Ohms

Av = rl/re;
disp (Av,'The Voltage Gain Av is')
disp ('Appox 90')
