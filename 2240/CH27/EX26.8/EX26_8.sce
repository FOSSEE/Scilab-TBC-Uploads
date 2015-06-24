// Grob's Basic Electronics 11e
// Chapter No. 26
// Example No. 26_8
clc; clear;
// Calculate the attenuation, in decibels, at the following frequencies: (a) 0 Hz; (b) 1.592 kHz; (c) 15.92 kHz. (Assume that Vin is 10 V p-p at all frequencies.)

// Given data

f1 = 0;                 // Frequency 1=0 Hz
f2 = 1.592*10^3;        // Frequency 2=1.592 kHz (cutoff frequency)
f3 = 15.92*10^3;        // Frequency 3=15.92 kHz
Vi = 10;                // Voltage input=10 Volts(p-p)
R = 10*10^3;            // Resistor 1=10 kOhms
C = 0.01*10^-6;         // Capacitor 1=0.01 uFarad 
pi = 3.14;

Vo1 = Vi;
Vo2 = 0.707*Vi;

// At 0 Hz

N1 = 20*log10(Vo1/Vi);
disp (N1,'The Attenuation at 0 Hz in dB')

//At 1.592 kHz (cutoff frequency)

N2 = 20*log10(Vo2/Vi);
disp (N2,'The Attenuation at 1.592 kHz in dB')

// At 15.92 kHz

Xc = 1/(2*%pi*f3*C);

A = R*R;
B = Xc*Xc;

Zt = sqrt (A+B);

N3 = 20*log10(Xc/Zt);
disp (N3,'The Attenuation at 15.92 kHz in dB')
