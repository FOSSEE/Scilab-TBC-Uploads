// Grob's Basic Electronics 11e
// Chapter No. 26
// Example No. 26_5
clc; clear;
// Calculate the notch frequency fn if R1 is 1 kOhms and C1 is 0.01 uF. Also, calculate the required values for 2R1 and 2C1 in the low-pass filter.

// Given data

R1 = 1*10^3;        // Resistor 1=1 kOhms
C1 = 0.01*10^-6;    // Capacitor 1=0.01 uFarad
pi = 3.14;

// To calculate Notch frequency fn for RC low-pass filter

fn = 1/(4*pi*R1*C1);
disp (fn,'The Notch Frequency for RC Low-Pass filter in Hertz');
disp ('i.e 7.96 kHz')

A = 2*R1;
disp (A,'The Required Value of 2R1 in Ohms')
disp ('i.e 2 kOhms')

B = 2*C1;
disp (B,'The Required Value of 2C1 in Ohms')
disp ('0.02 uF')
