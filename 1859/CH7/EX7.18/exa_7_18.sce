// Exa 7.18
clc;
clear;
close;
// Given data
R2= 1000;// in ohm
R3= 16800;//in ohm
R4= 833;//in ohm
C4= 0.38;// in miu F
C4= C4*10^-6;// in F
f= 50;// in Hz
omega=2*%pi*f;
L1= R2*R3*C4/(1+(omega*C4*R4)^2);// in H
disp(L1,"Unknown inductance in H");
R1= R2*R3*R4*omega^2*C4^2/(1+(omega*C4*R4)^2);// in ohm
disp(R1,"Unknown resistance in ohm")
