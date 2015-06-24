// Grob's Basic Electronics 11e
// Chapter No. 26
// Example No. 26_7
clc; clear;
// The input power to a filter is 100 mW, and the output power is 5 mW. Calculate the attenuation, in decibels, offered by the filter.

// Given data

Pi = 100*10^-3;    // Input power=1 Watts
Po = 5*10^-3;      // Output power=100 Watts

N = 10*log10(Po/Pi);
disp (N,'The Attenuation offered by the Filter in dB')
