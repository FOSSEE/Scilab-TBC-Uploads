// Exa 1.35

clc;
clear;

// Given

f = 450; // Resonating frequency in kHz
C = 250; // Capacitor value at resonating frequency (pf)
Q = 105; // Q-meter reading at resonance
Rsh = 0.75; // Value of shunt resistance in ohms

// Solution

L = 1/((2*%pi*f*10^3)^2*C*10^-12);  // in H
w=2*%pi*f*10^3;
R = (w*L)/Q - Rsh;
x= round(w*L/Q);
printf(' The value of resistance,R = %.2f Ohms \n',double(w*L/Q)-Rsh);

// The answer vary due to round off error
