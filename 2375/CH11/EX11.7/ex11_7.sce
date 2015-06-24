// Exa 11.7
clc;
clear;
close;
format('v',6)
// Given data
f_max = 10;// in kHz
f_max = f_max * 10^3;// in Hz
R = 100*10^3;// in k ohm
C = 1/(2*%pi*f_max*R);// in F
C= C*10^9;// in nF
disp(C,"For maximum frequency, the value of C in nF is");
f_min = 100;// in Hz
C = 1/(2*%pi*f_min*R);// in F
C= C*10^9;// in nF
disp(C,"For minimum frequency, the value of C in nF is");
