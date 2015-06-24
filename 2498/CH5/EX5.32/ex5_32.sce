// Exa 5.32
clc;
clear;
close;
format('v',6)
// Given data
L1 = 0.1;// in mH
L1 = L1 * 10^-3;// in H
L2 = 10;// in mH
L2 = L2 * 10^-3;// in H
L = 150;// in µH
L = L * 10^-6;// in H
f = 4110;// in kHz
f = f * 10^3;// in Hz
//Frequency of oscillations, f = 1/(2*%pi*sqrt(L*C)), So
C = 1/(4*(%pi^2)*(f^2)*L );// in F
C = round(C * 10^12);// in pF
disp(C,"The value of capacitor in pF is");
