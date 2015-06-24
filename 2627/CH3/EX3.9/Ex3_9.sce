//Ex 3.9
clc;clear;close;
format('v',5);
R=12;//ohm(Coil resistance)
L=0.1;//H(Coil Inductance)
V=100;//V
f=50;//Hz
XL=2*%pi*f*L;//ohm
Z=sqrt(R^2+XL^2);//ohm
disp(Z,XL,"(a) Reactance(ohm) & impedence(ohm) of the coil are");
I=V/Z;//A
disp(I,"(b) Current(A)");
fi=atand(XL/R);//degree
fi=round(fi);//degree
disp(fi,"Phase difference(degree)");
