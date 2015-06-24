// Exa 5.34
clc;
clear;
close;
format('v',8)
// Given data
R2 = 200;// in k ohm
R2 = R2 * 10^3;// in ohm
R1 = R2;// in ohm
C2 = 250;// in pF
C2 = C2 * 10^-12;// in F
C1 = C2;// in F
R = R2;// in ohm
C = C2;// in F
// Frequency of oscillations,
f = 1/(2*%pi*R*C);// in Hz
disp(f,"The frequency in Hz is");

// Note: The answer in the book is not accurate.
