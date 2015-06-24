// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_17
clear; clc;
// Calculate the Voltage gain, Acl at (a)0 Hz and (b) 1 MHz

// Given data

f1 = 1*10^6;        // Frequency=1 MHertz
Rf = 10*10^3;       // Feedback resistance=10 kOhms
R1 = 1*10^3;        // Resistance1=1 kOhms
Cf = 0.01*10^-6;    // Feedback capacitance=0.01 uFarad
pi = 3.14;

// At 0 Hz, Xcf = infinity ohms, So, Zf=Rf 

Acl = -Rf/R1;
disp (Acl,'The Closed-Loop Voltage Gain at 0 Hz is');

// At 1 MHz

Xcf = 1/(2*pi*f1*Cf);

A = (Rf*Rf);
B = (Xcf*Xcf);

Zf = ((Xcf*Rf)/sqrt(A+B));

Acl1 = -Zf/R1;
disp (Acl1,'The Closed-Loop Voltage Gain at 1 MHz is');
