// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_9
clc; clear;
// Calculate Zin(CL) and Zout(CL). Assume Rin is 2 MOhms, Avol is 100,000, and Zout(OL) is 75 Ohms.

// Given data

Avol = 100000;  // Open loop voltage gain=100,000
Ri = 2*10^6;    // Input resistance=2 MOhms
B = 0.0909;     // Beta=0.0909
Zool = 75;      // Output impedence (open-loop)=75 Ohms

Zicl = Ri*(1+Avol*B);
disp (Zicl,'The Input Impedence Closed-Loop in Ohms')
disp ('i.e 18 GOhms')

A = Avol*B;

Zocl = Zool/(1+A);
disp (Zocl,'The Closed-Loop Output Impedence in Ohms')
