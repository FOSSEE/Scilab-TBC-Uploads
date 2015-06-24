//Example 11.7.b // impedence
clc;
clear;
close;
R=40;//in ohms
L=0.07;//IN HENRY
v=223;//IN VOLTS
F=50;// IN HERTS
Xl=2*%pi*F*L;// inductive reactance in ohms
Z=sqrt(R^2+Xl^2);//IMPEDENCE IN OHMS
disp(Z,"impedence in ohms is")
