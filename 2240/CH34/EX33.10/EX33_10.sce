// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_10
clc; clear;
// Assume Rin is 2 MOhms, Avol is 100,000, and Zout(OL) is 75 Ohms. Calculate Zin(CL) and Zout(CL)

// Given data

Avol = 100000;  // Open loop voltage gain=100,000
Ri = 2*10^6;    // Input resistance=2 MOhms
B = 1;          // Beta=1
Zool = 75;      // Output impedence (open-loop)=75 Ohms

Zicl = Ri*(1+Avol*B);
disp (Zicl,'The Input impedence closed-loop in Ohms')
disp ('i.e 200 GOhms')

A = Avol*B;

Zocl = Zool/(1+A);
disp (Zocl,'The Closed loop Output Impedence in Ohms')

