// Exa 4.14
clc;
clear;
close;
format('v',6)
// Given data
R = 10;// in ohm
L = 15;// in µH
L = L * 10^-6;// in H
C = 100;// in pF
C = C * 10^-12;// in F
f_r = 1/(2*%pi*sqrt(L*C));// in Hz
X_L = 2*%pi*f_r*L;// in ohm
Q = X_L/R;// in ohm
BW = f_r/Q;// in Hz
BW = BW * 10^-3;// in kHz
disp(BW,"The bandwidth in kHz is");
