// Exa 4.26
clc;
clear;
close;
format('v',8)
// Given data
R = 10;// in ohm
L = 0.1;// in H
C = 8;// in µF
C = C * 10^-6;// in F
f_r = 1/(2*%pi*sqrt(L*C));// in Hz
Q = (1/R) * (sqrt(L/C));
del_F = R/(4*%pi*L);
// The half power frequencies 
f1 = f_r - del_F;// in Hz
f2 = f_r+del_F;// in Hz
disp("The half power frequencies are : "+string(f1)+" Hz and "+string(f2)+" Hz")
