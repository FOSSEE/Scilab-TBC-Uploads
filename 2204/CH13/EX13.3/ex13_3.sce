// Exa 13.3
clc;
clear;
close;
// Given data
C = 0.01;// in µF
C = C * 10^-6;// in F
f = 1;// in kHz
f = f * 10^3;// in Hz
R_A = 1.44/(2*f*C);// in ohm
R_A = R_A * 10^-3;// in k ohm
R_B= R_A;// in kohm
disp(R_A,"The value of both the resistors required in kΩ is");
