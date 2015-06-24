// Exa 4.15
clc;
clear;
close;
format('v',6)
// Given data
R = 1000;// in ohm
L = 100;// in mH
L = L * 10^-3;// in H
C = 10;// in µµF
C = C * 10^-12;// in F
f_r = 1/(2*%pi*sqrt(L*C));// in Hz
disp(f_r*10^-3,"The resonant frequency in kHz is");
Q = (1/R)*(sqrt(L/C));
disp(Q,"The quality factor is");
f1 = f_r - R/(4*%pi*L);// in Hz
f1 = f1 * 10^-3;// in kHz
f2 = f_r + R/(4*%pi*L);// in Hz
f2 = f2 * 10^-3;// in kHz
disp("The half point frequencies are : "+string(f1)+" Hz and "+string(f2)+" Hz")
