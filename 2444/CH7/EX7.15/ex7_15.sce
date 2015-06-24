// Exa 7.15
clc;
clear;
close;
format('v',5)
// Given data
R1 = 20;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = R1;// in ohm
R = R1;// in ohm
C1 = 1000;// in pF
C1 = C1 * 10^-12;// in F
C2 = C1;// in F
C = C1;// in F
f = 1/(2*%pi*R*C);// in Hz
f= f*10^-3;// in kHz
disp(f,"The frequency of oscillations in kHz is");
