// Grob's Basic Electronics 11e
// Chapter No. 29
// Example No. 29_9
clc; clear;
// Calculate the following: Ie, Vcb, r'e, Av, vout and zin.

// Given data

Rc = 1.5*10^3;      // Collector resistance=1.5 kOhms
Re = 1.8*10^3;      // Emitter resistance=1.8 kOhms
Rl = 1.5*10^3;      // Load resistance=1.5 kOhms
Vcc = 15;           // +ve Supply Voltage=15 Volts
Vee = 9;            // -ve Supply Voltage=9 Volts
Vbe = 0.7;          // Voltage Base-Emitter=0.7 Volts
vin = 25*10^-3;     // Input Voltage=25 mVolts(p-p)


Ie = (Vee-Vbe)/Re;
disp (Ie,'The Emmiter current in Amps')
disp ('i.e 4.61 mApms')

Ic = Ie;        // Ic =~ Ie

Vcb = Vcc-(Ic*Rc);
disp (Vcb,'The Collector-Base Voltage in Volts')
disp ('Appox 8.09 Volts')

a = 25*10^-3;

re = a/Ie;
disp (re,'The AC emmiter resistance in Ohms')

b = Rc*Rl;
c = Rc+Rl;

rl = b/c;

Av = rl/re;
disp (Av,'The Voltage gain is')

vout = Av*vin;
disp(vout,'The AC output voltage in Volts(p-p)')
disp ('Appox 3.46 Volts(p-p)')

d = Re*re
e = Re+re

Zin = d/e;
disp (Zin,'The Input Impedence in Ohms')
