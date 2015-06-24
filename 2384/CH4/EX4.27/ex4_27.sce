// Exa 4.27
clc;
clear;
close;
format('v',6)
// Given data
R = 15;// in ohm
X_L = 10;// in ohm
f_r = 50;// in Hz
// X_L = 2*%pi*f_r*L;
L = X_L/(2*%pi*f_r);// in H
// value of capacitance 
C = 1/( L*( ((f_r*2*%pi)^2)+((R^2)/(L^2)) ));// in F
C = C*10^6;// in µF
disp(C,"The value of capacitance in µF is");
