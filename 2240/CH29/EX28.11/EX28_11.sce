// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_11
clc; clear;
// Assume that a transistor has a power rating Pd(max) of 350 mW at an ambient temperature Ta of 25°C. The derating factor is 2.8 mW/°C. Calculate the power rating at 50°C.

// Given data

f = 2.8*10^-3;      // Derating factor=2.8 mW/°C
Pd = 350*10^-3;     // Power dissipation(max)=350 mWatts
Ta = 25;            // Ambient Temperature=25°C
Tp = 50;            // Power rating at 50°C

delT = Tp-Ta;       // Difference between max and min temp

delPd = delT*f;

Prat = Pd-delPd;
disp (Prat,'The Power Rating at 50°C in Watts')
disp ('i.e 280 mWatts')
