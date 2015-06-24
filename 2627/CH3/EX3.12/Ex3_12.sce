//Ex 3.12
clc;clear;close;
format('v',5);
R=6;//ohm
L=0.03;//H
V=50;//V
f=60;//Hz
XL=2*%pi*f*L;//ohm
Z=sqrt(R^2+XL^2);//ohm
I=V/Z;//A
disp(I,"(a) Current(A)");
fi=atand(XL/R);//degree
disp(fi,"(b) Phase angle(degree)");
S=V*I;//VA(Apparent power)
disp(S,"(c) Apparent power(VA)")
P=S*cosd(fi);//W
P=round(P);//W
disp(P,"(d) Active power(W)")
