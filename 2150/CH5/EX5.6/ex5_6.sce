// Exa 5.6
clc;
clear;
close;
// Given data
R = 10;// in K ohm
R = R * 10^3;// in ohm
X_C = 0.1 * R;
C = 47;// in µF
C = C * 10^-6;// in F
f = 1/(2*%pi * X_C *C) ;// in Hz
disp(f,"Lowest frequency in Hz is");
