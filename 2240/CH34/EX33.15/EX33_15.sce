// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_15
clc; clear;
// Assume that Rd increases to 7.5 k due to an increase in the ambient temperature. Calculate the output of the differential amplifier. Note: Rb is 5 kOhms.

// Given data

Vi = 5;         // Voltage input=5 Volts(dc)
Rf = 10*10^3;   // Feedback resistance=10 kOhms
R1 = 1*10^3;    // Resistance1=1 kOhms
Ra = 5*10^3;    // Resistance A at wein bridge=5 kOhms
Rb = 10*10^3;   // Resistance B at wein bridge=10 kOhms
Rc = 5*10^3;    // Resistance C at wein bridge=5 kOhms
Rd = 7.5*10^3;  // Resistance D at wein bridge=7.5 kOhms

Vx = Vi*(Ra/Rb);
Vy = Vi*(Rd/(Rd+Rc));
A = -Rf/R1

Vo = A*(Vx-Vy);
disp (Vo,'The Output of Differential Amplifier in Volts')
