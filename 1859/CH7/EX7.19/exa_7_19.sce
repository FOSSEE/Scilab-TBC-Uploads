// Exa 7.19
clc;
clear;
close;
// Given data
R1= 500;//in ohm
R2= 1000;// in ohm
R3= R2;//in ohm
L1= 0.18;// in H
f= 5000/(2*%pi);// in Hz
omega= 2*%pi*f;
// L1= R2*R3*C4/(1+(omega*C4*R4)^2)     (i)  
// and  R1= R2*R3*R4*omega^2*C4^2/(1+(omega*C4*R4)^2) or R1= omega^2*R4*C4*L1
R4C4= R1/(omega^2*L1);
// From eq (i)
C4= L1*(1+(omega*R4C4)^2)/(R2*R3);// in F
disp(C4*10^6,"Value of C in micro F");
R4= R4C4/C4;// in ohm
disp(round(R4),"Value of R4 in ohm")
