//Example 11.7.a // inductive reactance
clc;
clear;
close;
R=40;//in ohms
L=0.07;//IN HENRY
v=223;//IN VOLTS
F=50;// IN HERTS
Xl=2*%pi*F*L;// inductive reactance in ohms
disp(round(Xl),"inductive reactance in ohms is")
