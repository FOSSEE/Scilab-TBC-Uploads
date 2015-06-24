// Grob's Basic Electronics 11e
// Chapter No. 27
// Example No. 27_4
clc; clear;
// If the turns ratio Np:Ns is 3:1, calculate the following: Vs, Vdc, Il, Idiode, PIV for D1, and fout.

// Given data

Vp = 120;       // Primary voltage=120 Vac
A = 3/1;        // Turns ratio Np:Ns=3:1
B = 1/3;        // Turns ratio Ns:Np=1:3
Rl = 100;       // Load resistance=100 Ohms
fi = 60;        // Input frequency=60

Vs = B*Vp;
disp (Vs,'The Secondary Voltage in Volts(ac)')

Vspk = (Vs*1.414);

C = Vspk-0.7;

Vdc = 0.318*C;
disp (Vdc,'The DC Voltage in Volts')

Il = Vdc/Rl;
disp (Il,'The Load Current in Amps');

Idiode = Il;
disp (Idiode,'The DC Diode Current in Amps')

PIV = Vspk;
disp (PIV,'The PIV for Diode-1 in Volts')

fo =fi;
disp (fo,'The Output Frequency in Hertz')
