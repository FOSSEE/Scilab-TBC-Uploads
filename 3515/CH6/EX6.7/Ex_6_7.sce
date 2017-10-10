// Exa 6.7
format('v',7);
clc;
clear;
close;
// Given data
L= 0.01;// in H
C= 10;// in pF
C= C*10^-12;// in F
f= 1/(2*%pi*sqrt(L*C));// in Hz
disp(f*10^-3,"Frequency of oscillations in kHz is : ")

// Note: Calculation to find the value of f in the book is wrong, so answer in the book is wrong
