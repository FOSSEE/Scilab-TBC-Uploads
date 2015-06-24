// Grob's Basic Electronics 11e
// Chapter No. 30
// Example No. 30_8
clear; clc;
//Calculate Av, Vo, Zin.

// Given Data

Rd = 1.2*10^3;      // Drain Resistor=1.2 kOhms
Rl = 15*10^3;       // Load Resistor=15 kOhms
gm = 3.75*10^-3;    // Transconductance=3.75 mSiemens
Vin = 10*10^-3;     // Input Voltage=10 mVpp
Rs = 200;           // Source Resistor=200 Ohms

rl = ((Rd*Rl)/(Rd+Rl));

Av = gm*rl;
disp (Av, 'The Voltage Gain Av is')

Vo = Av*Vin;
disp (Vo, 'The Output Voltage in Volts(p-p)')
disp ('Appox 41.6 mVolts(p-p)')

A = (1/gm);

Zi = ((Rs*A)/(Rs+A));
disp (Zi,'The Output Impedence Zi in Ohms')
disp ('Appox 114 Ohms')
