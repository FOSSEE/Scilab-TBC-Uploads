// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_11
clc; clear;
// Calculate the closed-loop voltage gain, Acl, and the dc voltage at the op-amp output terminal.

// Given data

V = 15;         // Voltage at +ve terminal of op-amp=15 Volts
Rf = 10*10^3;   // Feedback resistance=10 kOhms
Ri = 1*10^3;    // Input resistance=1 kOhms
R1 = 10*10^3;   // Resistance1=10 kOhms
R2 = 10*10^3;   // Rsistance2=10 kOhms

Acl = -(Rf/Ri);
disp (Acl,'The Closed-Loop Voltage Gain Acl is')

Vo = V*(R2/(R1+R2));
disp (Vo,'The Output Voltage in Volts')
