// Grob's Basic Electronics 11e
// Chapter No. 15
// Example No. 15_3
clc; clear;
// Calculate the period for the two frequencies of 1 MHz and 2 MHz.Calculate the period for the two frequencies of 1 MHz and 2 MHz.

// Given data

f1 = 1*10^6;        // Freq=1 MHz
f2 = 2*10^6;        // Freq=2 MHz

t1 = 1/f1;
disp (t1,'The Time period in Seconds of 1 MHz freq.')
disp ('i.e 1*10^-6 sec = 1 usec')

t2 = 1/f2;
disp (t2,'The Time period in Seconds of 2 MHz freq.')
disp ('i.e 0.5*10^-6 sec = 0.5 usec')
