// Grob's Basic Electronics 11e
// Chapter No. 26
// Example No. 26_1
clc; clear;
// Calculate (a)the cutoff frequency fc; (b)Vout at fc; (c)Theta at fc (Assume Vin = 10 Vpp for all frequencies)

// Given data

R = 10*10^3;        // Resistor=10 kOhms
C = 0.01*10^-6;     // Capacitor=0.01 uFarad
Vin = 10;           // Input Voltage=10Vpp
pi = 3.14

// To calculate fc

fc = 1/(2*pi*R*C);
disp (fc,'The Cutoff Frequency in Hertz')
disp ('i.e 1.592 kHz')

// To calculate Vout at fc

Xc = 1/(2*pi*fc*C);

Zt = sqrt((R*R)+(Xc*Xc));

Vout = Vin*(Xc/Zt);
disp (Vout,'The Output Voltage in Vpp' );

// To calculate Theta

Theta = atand(-(R/Xc));
disp (Theta,'The Phase angle (Theta z) in Degree');
