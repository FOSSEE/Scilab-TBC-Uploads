// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_4
clc; clear;
// calculate the closed-loop voltage gain, Acl, and the output voltage, Vout.

// Given data

Vin = 1;        // Input voltage=1 Volts(p-p)
Rf = 10*10^3;   // Feedback resistance=10 kOhms
Ri = 1*10^3;    // Input resistance=1 kOhms

Acl = -(Rf/Ri);
disp (Acl,'The Closed-Loop Voltage Gain Acl is')

Vo = -Vin*Acl;
disp (Vo,'The Output Voltage in Volts(p-p)')
disp ('The -ve sign indicates that input and output voltages are 180° out-of-phase')
