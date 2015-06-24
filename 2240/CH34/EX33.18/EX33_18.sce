// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_18
clear; clc;
// Calculate the dB voltage gain, at (a)0 Hz and (b) 1.591 kHz

// Given data

f1 = 1.591*10^3;    // Frequency=1.591 kHertz
Rf = 10*10^3;       // Feedback resistance=10 kOhms
Ri = 1*10^3;        // Input resistance=1 kOhms
Cf = 0.01*10^-6;    // Feedback capacitance=0.01 uFarad

// At 0 Hz, Xcf = infinity ohms, So, Zf=Rf 

A = Rf/Ri

Acl = 20*log10(A);
disp (Acl,'The Voltage Gain at 0 Hz in dB');

// At 1.591 kHz

Xcf = 1/(2*%pi*f1*Cf);
B = (Rf*Rf);
C = (Xcf*Xcf);
Zf = (Xcf*Rf/sqrt(B+C));
D = Zf/Ri;

Acl1 = 20*log10(D);
disp (Acl1,'The Voltage Gain at 1.591 kHz in dB')
disp ('Appox 17dB')
