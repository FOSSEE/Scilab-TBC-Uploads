// Exa 7.6
clc;
clear;
close;
format('v',5)
// Given data
L1 = 30;// in mH
L1 = L1 * 10^-3;// in H
L2 = 1*10^-8;// in H
M = 0;// in H
L = L1+L2+(2*M);// in H
C = 100;// in pF
C = C * 10^-12;// in F
f_o = 1/(2*%pi*(sqrt( L*C )));// in Hz 
f_o = f_o * 10^-3;// in kHz
disp(f_o,"The frequency of oscillation in kHz is");
