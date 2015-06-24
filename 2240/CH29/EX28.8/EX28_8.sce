// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_8
clc; clear;
// A transistor has Alpha(dc) of 0.995. Calculate Beta(dc).

// Given data

Adc = 0.995;  // Alpha(dc)=100

Bdc = Adc/(1-Adc);
disp (Bdc,'The Value of Beta(dc) is')
