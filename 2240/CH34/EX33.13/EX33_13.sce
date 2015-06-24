// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_13
clc; clear;
// Calculate the output voltage, Vout.

// Given data

V1 = 0.5;       // Input voltage1=0.5 Volts
V2 = -2;        // Input voltage2=-2 Volts
Rf = 10*10^3;   // Feedback resistance=10 kOhms
R1 = 1*10^3;    // Resistance1=1 kOhms
R2 = 2.5*10^3;  // Rsistance2=2.5 kOhms

A = Rf/R1;
B = Rf/R2;

Vo = -(A*V1+B*V2);
disp (Vo,'The Output Voltage in Volts')
