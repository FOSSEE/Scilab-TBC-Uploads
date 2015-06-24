//Caption:Find starting torque in terms of full load torque
//Exa:12.7
clc;
clear;
close;
s=0.03//slip
a=2.5//Ratio of supply current to full load current
b=5//Ratio of short circuit current to full load current
x=sqrt(a/b)
T=(x^2)*(b^2)*s
disp(T,'Starting torque is (below) times the full load torque=')