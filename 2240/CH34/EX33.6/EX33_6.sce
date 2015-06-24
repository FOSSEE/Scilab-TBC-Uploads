// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_6
clc;clear;
// calculate Zin and Zout(CL). Assume AVOL is 100,000 and Zout(OL) is 75 Ohms.

// Given data

Avol = 100000;  // Open loop voltage gain=100,000
Rf = 10*10^3;   // Feedback resistance=10 kOhms
Ri = 1*10^3;    // Input resistance=1 kOhms
Zool = 75;      // Output impedence (open-loop)=75 Ohms

Zi = Ri;
disp (Zi,'The Input Impedence in Ohms')
disp ('i.e 1 kOhms')

Beta = Ri/(Ri+Rf);

A = Avol*Beta;

Zocl = Zool/(1+A);
disp (Zocl,'The Closed Loop Output Impedence in Ohms')
