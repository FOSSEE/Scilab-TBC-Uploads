// Exa 5.2
clc;
clear;
close;
format('v',6)
// Given data
f = 10;// in kHz
f = f * 10^3;// in Hz
R = 100;// in k ohm
R = R * 10^3;// in ohm
//Formula used, f = 1/(2*%pi*R*C);
C = 1/(2*%pi*R*f);// in F
C = round(C * 10^12);// in pF
disp(C,"The value of capacitor in pF is");
