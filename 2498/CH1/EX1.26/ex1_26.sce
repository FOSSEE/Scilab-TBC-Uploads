// Exa 1.26
clc;
clear;
close;
format('v',6)
// Given data
Io = 2*10^-7;// in A
V = 0.1;// in V
// Current through the diode under forward bias,
I = Io*( (%e^(40*V))-1 );// in A
I = I * 10^6;// in µA
disp(I,"The current through the diode under forward bias in µA is");

// Note: Calculated value of I in the book is wrong.
