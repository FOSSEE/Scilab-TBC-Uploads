// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_14
clc; clear;
// Calculate the output voltage, Vout, if (a) Vx is 1 Vdc and Vy is -0.25 Vdc, (b) -Vx is 0.5 Vdc and Vy is 0.5 Vdc, (c) Vx is 0.3 V and Vy is 0.3 V.

// Given data

Rf = 10*10^3;   // Feedback resistance=10 kOhms
R1 = 1*10^3;    // Resistance1=1 kOhms
Vx1 = 1;        // Input voltage Vx1 at -ve terminal of op-amp=1 Volts
Vy1 = -0.25;    // Input voltage Vy1 at +ve terminal of op-amp=-0.25 Volts
Vx2 = -0.5;     // Input voltage Vx2 at -ve terminal of op-amp=-0.5 Volts
Vy2 = 0.5;    // Input voltage Vy2 at +ve terminal of op-amp=0.5 Volts
Vx3 = 0.3;        // Input voltage Vx3 at -ve terminal of op-amp=0.3 Volts
Vy3 = 0.3;    // Input voltage Vy3 at +ve terminal of op-amp=0.3 Volts

A = -Rf/R1;

//  Case A

Voa = A*(Vx1-Vy1);
disp(Voa,'The Output Voltage of Case A in Volts')

//  Case B

Voa = A*(Vx2-Vy2);
disp(Voa,'The Output Voltage of Case B in Volts')

//  Case C

Voa = A*(Vx3-Vy3);
disp(Voa,'The Output Voltage of Case C in Volts')
