// Grob's Basic Electronics 11e
// Chapter No. 26
// Example No. 26_2
clc; clear;
// Calculate (a)the cutoff frequency fc; (b)Vout at 1 kHz; (c)Theta at 1 kHz (Assume Vin = 10 Vpp for all frequencies)

// Given data

R = 1*10^3;         // Resistor=1 kOhms
L = 50*10^-3        // Inductor=50 mHenry
Vin = 10;           // Input Voltage=10Vpp
f = 1*10^3;         // Frequency=1 kHz
// To calculate fc

fc = R/(2*%pi*L);
disp (fc,'The Cutoff Frequency in Hertz')
disp ('i.e 3.183 kHz')

// To calculate Vout at fc

Xl = 2*%pi*f*L;

Zt = sqrt((R*R)+(Xl*Xl));

Vout = Vin*(R/Zt);
disp (Vout,'The Output Voltage in Vpp');
disp ('Appox 9.52 Volts(p-p)')

// To calculate Theta

Theta = atand(-(Xl/R));
disp (Theta,'The Phase angle (Theta z) in Degree');
