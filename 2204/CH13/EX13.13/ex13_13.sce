// Exa 13.13
clc;
clear;
close;
// Given data
T = 5;// in msec
T = T * 10^-3;// in sec
C = 0.1;// in µF
C = C * 10^-6;// in F
R = T/(C*1.1);// in ohm
R = R * 10^-3;// in k ohm
disp(R,"The resistor in kΩ is");
