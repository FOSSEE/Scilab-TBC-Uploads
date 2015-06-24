// Exa 5.33
clc;
clear;
close;
format('v',6)
// Given data
f = 1;// in kHz
f = f * 10^3;// in Hz
R = 10;// in k ohm
R = R * 10^3;// in ohm
omega = 2*%pi*f;//in rad/sec
phi = 60;// in degree
// tand(phi) = Alpha_C/R = 1/(omega*C*R);
C = 1/(omega*R*tand(phi));// in F
C = C * 10^6;// in µF
disp(C,"The value of C in µF is");
