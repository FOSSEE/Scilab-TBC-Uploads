clear;
clc;
p=10*10^-2 ,a=1*10^-2 ,Ur=1000, Uo=4*%pi*10^-7,n=200,phi=.5*10^-3;
U=Uo*Ur;
I=phi*2*%pi*p/(Uo*Ur*n*%pi*a*a);
disp(I);