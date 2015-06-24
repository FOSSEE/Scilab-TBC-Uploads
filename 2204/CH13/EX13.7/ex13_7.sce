// Exa 13.7
clc;
clear;
close;
// Given data
C = 0.01;// in µF
C = C * 10^-6;// in F
f = 1;// in kHz
f = f* 10^3;// in Hz
a = 1.44;
R_A = a/(2*f*C);// in ohm
R_A = R_A * 10^-3;// in k ohm
R_B = R_A;// in k ohm
disp(R_A,"The value of both the resistors required in kΩ is");
