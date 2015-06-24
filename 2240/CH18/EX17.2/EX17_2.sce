// Grob's Basic Electronics 11e
// Chapter No. 17
// Example No. 17_2
clc; clear;
//How much is the Xc of a 47-pF value of C at (a) 1 MHz? (b) 10 MHz?

// Given data

f1 = 1*10^6;   // Frequency1=1 MHz
f2 = 10*10^6;  // Frequency2=10 MHz
C = 47*10^-12; // Cap=47 pF

// For 1 MHz

Xc1 = 1/(2*%pi*f1*C);
disp (Xc1,'The Capacitive Reactance in Ohms')
disp ('appox 3388 Ohms')

// For 10 MHz

Xc2 = 1/(2*%pi*f2*C);
disp (Xc2,'The Capacitive Reactance in Ohms')
