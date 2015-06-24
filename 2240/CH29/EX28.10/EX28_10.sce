// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_10
clc; clear;
// The transistor has a power rating of 0.5 W. If Vce is 20 V, calculate the maximum allowable collector current, Ic, that can exist without exceeding the transistor’s power rating.

// Given data

Pdmax = 0.5;        // Power dissipation(max)=0.5 Watts
Vce = 20;           // Voltage (collector to emitter)=20 Volts

Ic = Pdmax/Vce;
disp (Ic,'The Maximum Allowable Collector Current Ic(max) in Amps')
disp ('i.e 25 mAmps')
