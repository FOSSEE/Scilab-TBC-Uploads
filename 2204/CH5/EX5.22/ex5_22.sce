// EXa 5.22
clc;
clear;
close;
// Given data
R = 10;// in k ohm
R = R * 10^3;// in ohm
C = 0.01;// in µF
C = C * 10^-6;// in F
f = 2;// in kHz
f = f * 10^3;// in Hz
Phi = -2*atand(2*%pi*R*C*f);// in degree
disp(Phi,"The phase shift in degree is");
