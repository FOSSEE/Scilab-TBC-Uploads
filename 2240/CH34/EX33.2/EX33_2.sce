// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_2
clc; clear;
// calculate the common-mode voltage gain, ACM, and the CMRR (dB).

// Given data

Rc = 10*10^3;     // Collector resistance=10 kOhms
Re = 10*10^3;     // Emitter resistance=10 kOhms
Ad = 142.86;      // Differential gain=142.86

Acm = Rc/(2*Re);
disp (Acm,'The Common-Mode Voltage Gain Acm is')

CMRR = 20*log10(Ad/Acm);
disp (CMRR,'The Commom-Mode Rejection Ratio in dB')
