// Exa 7.20
clc;
clear;
close;
// Given data
R2= 1000;//in ohm
R3= 10000;// in ohm
R4= 2000;//in ohm
C4= 1*10^-6;// in F
omega= 3000;// radians/sec
L1= R2*R3*C4/(1+(omega*C4*R4)^2);// in H
disp(L1,"Equivalent inductance of the network in H")
R1= R2*R3*R4*omega^2*C4^2/(1+(omega*C4*R4)^2);// in ohm
disp(R1*10^-3,"Equivalent resistance of the network in kohm")
