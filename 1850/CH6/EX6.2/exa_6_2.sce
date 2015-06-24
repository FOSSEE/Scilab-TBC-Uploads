// Exa 6.2
clc;
clear;
close;
// Given Data
f_H= 2;// in kHz
f_H= f_H*10^3;// in Hz
C=0.033;// in micor F
C=C*10^-6;// in F
C_desh= C;
R= 1/(2*%pi*f_H*C);// in ohm
R=R*10^-3;// in kohm
R=2.7;// k ohm (Standard value)
R_desh= R;
// So 2*R= Rf*R1/(Rf+R1) = 0.586*R1^2/(1.586*R1)
R1= 2*R*1.586/(0.586);// in k ohm
R1= 15;// k ohm (Standard value)
Rf= 0.586*R1;// in k ohm
Rf= 10;// k ohm (Standard value)
disp("Rf may be taken as a pot of : "+string(Rf)+" k ohm")
