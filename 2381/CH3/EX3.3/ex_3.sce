//Example 3 // Reactance and impedence
clc;
clear;
close;
//given data :
n=50;// in cycles
w=2*%pi*n;// in rad/sec
L=1/%pi;// in H
XL=w*L;
disp(XL,"The reactance,XL(ohm) = ")
R=100;// in ohm
Z=sqrt(R^2+XL^2);
disp(Z,"The impedence,Z(ohm) = ")
