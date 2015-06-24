//Example 3_10
clc;
clear;
close;
format('v',6);
//given data :
V=200;//V
f=50;//Hz
R=40;//ohm
L=0.0637;//H
XL=2*%pi*f*L;//ohm
IR=V/R;//A
IL=V/XL;//A
I=sqrt(IR^2+IL^2);//A
disp(I,"(a) Current drawn from supply(A)");
S=V*I/1000;//kVA
disp(S,"(b) Apparent Power(kVA)");
P=V*IR/1000;//kW
disp(P,"(c) Real Power(kW)");
