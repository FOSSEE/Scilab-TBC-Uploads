// Grob's Basic Electronics 11e
// Chapter No. 31
// Example No. 31_7
clc; clear;
// Calculate the Bandwidth

// Given data

L = 100*10^-6;      // Inductor=100 uHenry
fr = 2*10^6;        // Resonant Frequency=2 MHertz
ri = 12.56;         // Resistance of Coil=12.56 Ohms
Rp = 100*10^3;      // Rp=100 kOhms

Xl = 2*3.14*fr*L;
Qcoil = Xl/ri;
Ztank = Qcoil*Xl;

A = Ztank;
B = Rp;
C = (A*B)/(A+B);
Qckt = C/Xl;

BW = fr/Qckt;
disp (BW,'The Bandwidth in Hertz')
disp ('i.e Appox 45 kHz')
