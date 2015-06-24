// Grob's Basic Electronics 11e
// Chapter No. 18
// Example No. 18_2
clc; clear;
// A 30-mA Ir is in parallel with another branch current of 40 mA for Ic. The applied voltage Va is 72 V. Calculate It, Zeq and Theta I.

// Given data

Ir = 30*10^-3;  // Current Ir=30 mA
Ic = 40*10^-3;  // Current Ic=40 mA
Va = 72;        // Applied Voltage=72 Volts

A = Ir*Ir;
B = Ic*Ic;

It = sqrt(A+B);
disp (It,'The Total Current in Amps')
disp ('i.e 50 mAmps')

Zeq = Va/It;
disp (Zeq,'The Equivqlent Impedence in Ohms')
disp ('i.e 1.44 kOhms')

Oi = atand (Ic/Ir);
disp (Oi,'The Value of Theta I in degrees')
