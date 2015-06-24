// Exa 6.12
clc;
clear;
close;
// Given Data
format('v',5)
fH= 200;// in Hz
fL= 2;// in kHz
fL=fL*10^3;// in Hz
C= 0.05;// in micro F
C=C*10^-6;// in F
R_desh= 1/(2*%pi*fH*C);// in ohm
R_desh=R_desh*10^-3;// in kohm
R= 1/(2*%pi*fL*C);// in ohm
R=R*10^-3;// in kohm
disp(R_desh,"Value of R_desh in kohm");
disp("Or 18 kohm (Standard value)")
disp(R,"Value of R in kohm");
disp("Or 1.8 kohm (Standard value)")

