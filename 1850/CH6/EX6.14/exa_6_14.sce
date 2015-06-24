// Exa 6.14
clc;
clear;
close;
// Given Data
format('v',7)
fN= 60;// in Hz
// Let
C= 0.06;// in micro F
C=C*10^-6;// in F
R= 1/(2*%pi*fN*C);// in ohm
R=R*10^-3;// in kohm
disp(R,"Value of R in kohm");
disp("Or 47 kohm (Standard value)")
disp("For R/2, two 47 kohm resistors connected in parallel may be used and for 2C component, two parallel connected 0.06 micro F capacitors may be used")
