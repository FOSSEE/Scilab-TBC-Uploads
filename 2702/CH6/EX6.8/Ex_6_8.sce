// Exa 6.8
clc;
clear;
close;
// Given data
L= 0.8;// in H

C= .08;// in pF
C= C*10^-12;// in F
C_M= 1.9;// in pF
C_M= C_M*10^-12;// in F
C_T= C*C_M/(C+C_M);// in F
R=5;// in kohm
f_s= 1/(2*%pi*sqrt(L*C));// in Hz
disp(f_s*10^-3,"Series resonant frequency in kHz is : ")
// (ii)
f_p= 1/(2*%pi*sqrt(L*C_T));// in Hz
disp(f_p*10^-3,"parallel resonant frequency in kHz is : ")

// Note: Calculation to find the value of parallel resonant frequency in the book is wrong, so answer in the book is wrong
