// Grob's Basic Electronics 11e
// Chapter No. 17
// Example No. 17_1
clc; clear;
// How much is Xc for (a) 0.1 uF of C at 1400 Hz? (b) 1 uF of C at the same frequency?

// Given data

f = 1400;           // Frequency=1400 Hz
C1 = 0.1*10^-6;     // Cap1=0.1 uF
C2 = 1*10^-6;       // Cap2=1 uF

Xc1 = 1/(2*%pi*f*C1);
disp (Xc1,'The Capacitive Reactance in Ohms')
disp ('appox 1140 Ohms')

Xc2 = 1/(2*%pi*f*C2);
disp (Xc2,'The Capacitive Reactance in Ohms')
disp ('appox 114 Ohms')
