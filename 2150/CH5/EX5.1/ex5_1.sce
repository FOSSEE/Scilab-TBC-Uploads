// exa 5.1
clc;
clear;
close;
// Given data
R1 = 600;// in ohm
R2 = 1000;// in ohm
R_TH = (R1*R2)/(R1+R2);// in ohm
X_C = 37.5;// in ohm
f = 1;// in kHz
f= f*10^3;// in Hz
C = 1/(2*%pi * f*X_C);// in F
disp(C*10^6,"Value of C in µF is");
