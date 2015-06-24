// Exa 7.7
clc;
clear;
close;
format('v',5)
// Given data
L1 = 1;// in mH
L1 = L1 * 10^-3;// in H
L2 = 100;// in µH
L2 = L2 * 10^-6;// in H
M = 50;// in µH
M = M * 10^-6;// in H
C = 100;// in pF
C = C * 10^-12;// in F
L = L1+L2+(2*M);// in H
f_o = 1/(2*%pi*(sqrt( L*C )));// in Hz
f_o = f_o * 10^-3;// in kHz
disp(f_o,"The oscillation frequency in kHz is");
