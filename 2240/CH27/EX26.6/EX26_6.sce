// Grob's Basic Electronics 11e
// Chapter No. 26
// Example No. 26_6
clc; clear;
// A certain amplifier has an input power of 1 W and an output power of 100 W.Calculate the dB power gain of the amplifier.

// Given data

Pi = 1;     // Input power=1 Watts
Po = 100;   // Output power=100 Watts

N = 10*log10(Po/Pi);
disp (N,'The Power Gain of Amplifier in dB')
