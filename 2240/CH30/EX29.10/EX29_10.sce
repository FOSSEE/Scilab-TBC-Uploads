// Grob's Basic Electronics 11e
// Chapter No. 29
// Example No. 29_10
clc; clear;
// Calculate the ac output voltage, vout.

// Given data

Rc = 1.2*10^3;      // Collector resistance=1.2 kOhms
Re = 2.2*10^3;      // Emitter resistance=2.2 kOhms
Rl = 3.3*10^3;      // Load resistance=3.3 kOhms
Rg = 600;           // Generator Resistance=600 Ohms
Vcc = 12;           // +ve Supply Voltage=15 Volts
Vee = 12;           // -ve Supply Voltage=9 Volts
Vbe = 0.7;          // Voltage Base-Emitter=0.7 Volts
vin = 1;            // Input Voltage=1 Volts(p-p)

Ie = (Vee-Vbe)/Re;

a = 25*10^-3;
re = a/Ie;

b = Rc*Rl;
c = Rc+Rl;
rl = b/c;

Av = rl/re;

d = Re*re
e = Re+re
Zin = d/e;

ve = vin*(Zin/(Zin+Rg));

vout = Av*ve;
disp(vout,'The AC output voltage in Volts(p-p)')



