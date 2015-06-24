// Grob's Basic Electronics 11e
// Chapter No. 26
// Example No. 26_4
clc; clear;
// Calculate the cutoff frequencies fc1 and fc2.

//Given data

R1 = 1*10^3;        // Resistor 1=1 kOhms
C1 = 1*10^-6;       // Capacitor 1=1 uFarad
R2 = 100*10^3;      // Resistor 2=100 kOhms
C2 = 0.001*10^-6;   // Capacitor 2=0.001 uFarad

// To calculate fc1 for RC high-pass filter

fc1 = 1/(2*%pi*R1*C1);
disp (fc1,'The Cutoff Frequency for RC High-Pass filter in Hertz');
disp ('i.e 159 Hz')

// To calculate fc2 for RC high-pass filter

fc2 = 1/(2*%pi*R2*C2);
disp (fc2,'The Cutoff Frequency for RC High-Pass filter in Hertz');
disp ('i.e 1.59 kHz')
