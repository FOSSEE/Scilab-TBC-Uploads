
//Example 11.10.f // total power taken
clear;
close;
clc;
R=5.94;//in ohms
L=0.35;//IN HENRY
C=35;// in micro farads
V=200;//IN VOLTS it is given wrong in the book
F=50;// IN HERTS
Xc=(1/(2*%pi*F*C*10^-6));// capacitive reactance in ohms
Xl=2*%pi*F*L;// inductive reactance in ohms
Z=sqrt(R^2+(Xl-Xc)^2);// impedence in ohms
I=V/round(Z);// in amperes
W=I^2*R;//total power taken in watts
disp(W,"total power taken in watts is")
