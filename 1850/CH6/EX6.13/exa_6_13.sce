// Exa 6.13
clc;
clear;
close;
// Given Data
format('v',7)
fN= 50;// in Hz
C= 0.068;// in micro F
C=C*10^-6;// in F
R= 1/(2*%pi*fN*C);// in ohm
R=R*10^-3;// in kohm
R=ceil(R)
disp(R,"Value of R in kohm");
disp("For R/2, two "+string(R)+" kohm resistors connected in parallel may be used and for 2C component, two parallel connected 0.068 micro F capacitors may be used")
