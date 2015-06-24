//Ex 3.14
clc;clear;close;
format('v',5);
V=230;//V
f=50;//Hz
I=5;//A
P=750;//W
Z=V/I;//ohm
R=P/I^2;//ohm(Resistance)
XL=sqrt(Z^2-R^2);//ohm(reactance)
L=XL/2/%pi/f;//H(Inductance)
disp(R,"(a) Resistance(ohm)");
disp(L*1000,"(a) Inductance(mH)");
pf=P/(V*I);//power factor(lag)
disp(pf,"(b) Power factor(lag)");
