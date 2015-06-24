// Grob's Basic Electronics 11e
// Chapter No. 30
// Example No. 30_7
clc; clear;
// Calculate Av, Vo & Zo.

// Given Data

Rs = 240;           // Source Resistor=240 Ohms
Rl = 1.8*10^3;      // Load Resistor=1.8 kOhms
Vgsoff = -8;        // Voltage Gate-Source(off)=-8 Volts
Vgs = -2;           // Voltage Gate-Source=-2 Volts
Idss = 15*10^-3     // Idss=15 mAmps.
Vin = 1;            // Input Voltage=1 Volts(p-p)

rl = ((Rs*Rl)/(Rs+Rl));
gmo = 2*Idss/-Vgsoff;
gm = gmo*(1-(Vgs/Vgsoff));

Av = gm*rl/(1+gm*rl);
disp (Av,'The Voltage Gain Av is')

Vo = Av*Vin;
disp (Vo,'The Output Voltage Vo in Volts(p-p)')

A = (1/gm);
Zo = ((Rs*A)/(Rs+A));
disp (Zo,'The Output Impedence Zo in Ohms')
disp ('Appox 143.5 Ohms')
