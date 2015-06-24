// Exa 5.29
clc;
clear;
close;
format('v',6)
// Given data
L = 0.01;// in H
C = 10;// in pF
C = C * 10^-12;// in F
// The frequency of oscillation 
f = 1/(2*%pi*sqrt(L*C));// in Hz
f = f * 10^-3;// in kHz
disp(f,"The frequency of oscillation in kHz is");

// Note: In the book, the calculation is wrong.
