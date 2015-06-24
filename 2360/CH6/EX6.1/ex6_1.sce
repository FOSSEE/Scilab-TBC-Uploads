// Exa 6.1
format('v',7);clc;clear;close;
// Given data
Z1 = 50;// in ohm
Z2 = 250;// in ohm
Z3 = 200;// in ohm
theta1 = 80;// in degree
theta2 = 0;// in degree
theta3 = 30;// in degree
//bridge balance equation, Z1*Z4 = Z2*Z3;
Z4 = (Z2*Z3)/Z1;// in ohm
//phase angle condition, theta1+theta4 = theta2+theta3;
theta4 = theta2+theta3-theta1;// in degree
Z4=Z4*expm(%i*theta4*%pi/180);
disp("The resistance part of Z4 is "+string(real(Z4))+" Ω while ")
disp(" it is in series with capacitive reactance of "+string(abs(imag(Z4)))+" Ω")
