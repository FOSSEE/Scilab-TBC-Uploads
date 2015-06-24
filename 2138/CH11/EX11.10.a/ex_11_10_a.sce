//Example 11.10.a // impedence
clc;
clear;
close;
R=5.94;//in ohms
L=0.35;//IN HENRY
C=35;// in micro farads
V=220;//IN VOLTS
F=50;// IN HERTS
Xc=(1/(2*%pi*F*C*10^-6));// capacitive reactance in ohms
Xl=2*%pi*F*L;// inductive reactance in ohms
Z=sqrt(R^2+(Xl-Xc)^2);// impedence in ohms
disp(round(Z),"impedence in ohms is")
