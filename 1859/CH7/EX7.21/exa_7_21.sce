// Exa 7.21
clc;
clear;
close;
// Given data
R2= 2410;//in ohm
R3= 750;// in ohm
R4= 64.5;//in ohm
C4= 0.35*10^-6;// in F
r4= 0.4;// series resistance of capacitor in ohm
f=500;/// in Hz
omega= 2*%pi*f;// radians/sec
R4= R4+r4;// in ohm
R1= R2*R3*R4*omega^2*C4^2/(1+(omega*C4*R4)^2);// in ohm
disp(R1,"Resistance of the choke coil in ohm")
L1= R2*R3*C4/(1+(omega*C4*R4)^2);// in H
disp(L1,"Inductance of the choke coil in H")

// Note: Calculation of finding the value of L1 in the book is wrong
