// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_7
clc; clear;
// A transistor has Beta(dc) of 100. Calculate Alpha(dc).

// Given data

Bdc = 100;  // Beta(dc)=100

Adc = Bdc/(1+Bdc);
disp (Adc,'The Value of Alpha(dc) is')
