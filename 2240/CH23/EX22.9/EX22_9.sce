// Grob's Basic Electronics 11e
// Chapter No. 22
// Example No. 22_9
clc; clear;
// An RC circuit has a time constant of 3 s. The capacitor is charged to 40 V. Then C is discharged. After 6 s of discharge, how much is Vr?

// Given data

RC = 3;     // RC time constant=3 Sec
t = 6;      // Discharge time=6 Sec
Vc = 40;    // Capacitor voltage=40 Volts

A = t/RC;   // constant factor
B = log10(Vc);

Vr = 10^(B-(A*0.434));
disp (Vr,'The Value of Vr in Volts')
