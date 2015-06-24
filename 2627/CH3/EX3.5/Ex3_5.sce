//Ex 3.5
clc;clear;close;
format('v',5);
V=100;//V
R=7;//ohm
L=31.8;//mH
f=50;///Hz
XL=2*%pi*f*L/1000;//ohm
Z=sqrt(R^2+XL^2);//ohm
I=V/Z;//A(circuit current)
disp(I,"(a) Circuit current(A)");
fi=atand(XL/R);//degree(lag)
disp(fi,"(b) Phase angle(lag) in degree");
