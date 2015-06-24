//Ex 3.8
clc;clear;close;
format('v',6);
C=30;//micro F
V=400;//V
f=50;//Hz
Xc=1/(2*%pi*f*C*10^-6);//ohm
disp(Xc,"(a) Reactance of capacitor(ohm)");
I=V/Xc;//A
disp(I,"(b) Current(A)");
