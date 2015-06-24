// Grob's Basic Electronics 11e
// Chapter No. 26
// Example No. 26_3
clc; clear;
// Calculate the cutoff frequency for (a) the RC high-pass filter; (b) the RL high-pass filter

// Given data

R = 1.5*10^3;       // Resistor=1.5 kOhms
L = 100*10^-3       // Inductor=100 mHenry
C = 0.01*10^-6;     // Capacitor=0.01 uFarad

// To calculate fc for RC high-pass filter

fc = 1/(2*%pi*R*C);
disp (fc,'The Cutoff Frequency for RC High-Pass Filter in Hertz')
disp ('i.e 10.61 kHz')

// To calculate fc for RL high-pass filter

fc1 = R/(2*%pi*L);
disp (fc1,'The Cutoff Frequency for RL High-Pass Filter in Hertz')
disp ('Appox 2.39 kHz')
