// Grob's Basic Electronics 11e
// Chapter No. 23
// Example No. 23_1
clc; clear;
// A 27-Ohms R is in series with 54 Ohms of Xl and 27 Ohms of Xc. The applied voltage Vt is 50 mV. Calculate ZT, I, and Theta z.

// Given data

R = 27;         // Resistance=27 Ohms
Xl = 54;        // Inductive reactance=54 Ohms
Vt = 50*10^-3;  // Applied voltage=100 Volts
Xc = 27;        // Capacitive reactance=27 Ohms

nXl = Xl-Xc;    // Net Inductive reactance
R1 = R*R;
nXl1 = nXl*nXl;

Zt = sqrt(R1+nXl1);
disp (Zt,'Total Impedence Zt in Ohms')

I = (Vt/Zt);
disp (I, 'Current I in Ampers')
disp ('i.e 1.31 mAmps')

Oz = atand(Xc/R);
disp (Oz, 'Theta z in Degree')
