//Exa 7.12
clc;
clear;
close;
//Given data : 
format('v',7);
VA=220;//in volt
VB=200;//in volt
R=0.1;//in ohm/km
I=1;//in A/m
l=500;//in meter
R=2*R/1000;//in ohm/m
x=(VA-VB)/(I*R*l)+l/2;//in meter
Vmin=VA-I*R*x^2/2;//in volts
disp(Vmin,"Value of minimum potential(in V) :");
IA=I*x;//in A
disp(IA,"Current supplied from end A(in A) :");
IB=I*(l-x);//in A
disp(IB,"Current supplied from end B(in A) :");