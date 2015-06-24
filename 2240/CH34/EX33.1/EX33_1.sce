// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_1
clc; clear;
// Calculate the differential voltage gain, Ad, and the ac output voltage, Vout.

// Given data

Vin = 10*10^-3;    // Input voltage=10 mVolts(p-p)
Rc = 10*10^3;      // Collector resistance=10 kOhms
Ie = 715*10^-6;    // Emitter current=715 uAmps

re = (25*10^-3)/Ie;

Ad = Rc/(2*re);
disp (Ad,'The Differential Voltage Gain is')
disp ('i.e 142.86 ~= 143')

Av = Ad

Vo = Av*Vin;
disp (Vo,'The Ac Output Voltage in Volts(p-p)')
