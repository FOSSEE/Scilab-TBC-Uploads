// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_22
clc; clear;
// R1 is 1 kOhms and R2 is 100 kOhms. Calculate UTP, LTP, and VH.

// Given data

R1 = 1*10^3;        // Resistance1=1 kOhms
R2 = 100*10^3;      // Resistance2=100 kOhms
Vcc = 15;           // Applied votage=15 Volts
Vsat = 13;          // Assume Saturation voltage=13 Volts

Beta = R1/(R1+R2);

Utp = Beta*Vsat;
disp(Utp,'The Upper Trigger Point in Volts')
disp ('i.e 128.7 mVolts')

Ltp = -Beta*Vsat;
disp(Ltp,'The Lower Trigger Point in Volts')
disp ('i.e -128.7 mVolts')

Vh = Utp-Ltp;
disp (Vh,'The Hysterisis Voltage in Volts')
disp ('i.e 257.4 mVolts')
