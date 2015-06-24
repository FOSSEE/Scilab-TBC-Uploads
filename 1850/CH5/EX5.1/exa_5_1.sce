// Exa 5.1
clc;
clear;
close;
// Given data
fo= 15;// in kHz
fo= fo*10^3;// in Hz
C=0.01;// in micro F
C=C*10^-6;// in F
L= 1/(4*%pi^2*fo^2*C);// in H
L=ceil(L*10^3);// in mH
// Let L be of 12 mH and internal resistance 30 ohm
R=30;// internal resistance in ohm
XL= 2*%pi*L*10^-3*fo;
Q= XL/R;
R_P= Q^2*R;// in ohm
// If
R1=100;// in ohm
// Formula L= R_f*R_P/(R1*(R_f+R_P));
R_f= R1*L*R_P/(R_P-R1*L);// in ohm
R_f=R_f*10^3;// in kohm
R_f= 1.2;// in k ohm (Standard value)
disp("The values of component chosen are:-");
disp(L,"Value of L in mH")
disp(C*10^6,"Value of C in micro F")
disp(R_f,"Value of L in k ohm")
disp(R1,"Value of L in ohm")



