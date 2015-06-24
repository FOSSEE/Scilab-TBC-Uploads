// Grob's Basic Electronics 11e
// Chapter No. 05
// Example No. 5_5
clc; clear;
// Two branches, each with a 5-A current, are connected across a 90-V source. How much is the equivalent resistance Req?

// Given data

I1 = 5;      // Branch Current 1=5 Amps
I2 = 5;      // Branch Current 2=5 Amps
Va = 90;     // Applied Voltage=90 Volts

It = I1+I2;
Req = Va/It;
disp (Req,'The Equivalent Resistance Req in Ohms')
