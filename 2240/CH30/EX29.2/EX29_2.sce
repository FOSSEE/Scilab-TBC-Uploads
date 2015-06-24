// Grob's Basic Electronics 11e
// Chapter No. 29
// Example No. 29_2
clc;clear;
//A common-emitter amplifier circuit has an input of 25 mVp-p and an output of 5 Vp-p. Calculate Av.

// Given data

Vin = 25*10^-3;     // Input voltage=25 mVolts(p-p)
Vo = 5;             // Output voltage=5 Volts(p-p).

Av = Vo/Vin;
disp (Av,'The Voltage Gain Av is')
