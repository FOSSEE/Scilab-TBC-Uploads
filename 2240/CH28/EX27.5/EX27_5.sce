// Grob's Basic Electronics 11e
// Chapter No. 27
// Example No. 27_5
clc; clear;
// If the turns ratio Np:Ns is 3:1, calculate the following: Vdc, Il, Idiode, PIV for D1, and fout.

// Given data

Vp = 120;       // Primary voltage=120 Vac
A = 3/1;        // Turns ratio Np:Ns = 3:1
B = 1/3;        // Turns ratio Ns:Np = 1:3
Rl = 100;       // Load resistance=100 Ohms

Vs = B*Vp;
Vspk = 1.414*(Vs/2);
Vopk = Vspk-0.7;

Vdc = 0.636*Vopk;
disp (Vdc,'The DC Voltage in Volts')

Il = Vdc/Rl;
disp (Il,'The Load Current in Amps')
disp ('i.e 175.4 mAmps')

Idiode = Il/2;
disp (Idiode,'The DC Diode Current in Amps')
disp ('i.e 87.7 mAmps')

C = (Vspk*2)-0.7;

PIV = C;
disp (PIV,'The PIV for Diode-1 in Volts')

f =120;
disp (f,'The Output Frequency in Hertz')
