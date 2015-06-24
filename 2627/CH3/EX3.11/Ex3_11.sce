//Ex 3.11
clc;clear;close;
format('v',5);
R=12;//ohm
L=0.15;//H
C=100;//micro F
V=100;//V
f=50;//Hz
XL=2*%pi*f*L;//ohm
XC=1/(2*%pi*f*C*10^-6);//ohm
Z=sqrt(R^2+(XL-XC)^2);//ohm
disp(Z,"(a) Impedence(ohm)");
I=V/Z;//A
disp(I,"(b) Current(A)");
VR=R*I;//V
VL=XL*I;//V
VC=XC*I;//V
disp(VC,VL,VR,"(b) Voltge(V) across R, L & C");
fi=acosd(VR/V);//degree
disp(fi,"(c) Phase difference(degree)");
