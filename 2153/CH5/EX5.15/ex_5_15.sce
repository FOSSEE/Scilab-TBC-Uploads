//Example 5.15 : electrical resistivity
clc;
clear;
close;
//given data :
format('v',8)
r=1.86*10^-10;// in m
t=3*10^-14;// in sec
a=2;
m=9.1*10^-31; // in kg
e=1.602 *10^-9;
A=23*10^-3;//in kg/m
N=6.023*10^23; // avogadro's number
M=(a*A)/N;
V=((4/sqrt(3))*r)^3;
d=M/V;
mu=((e*t)/m);
n=(N*d)/A;
b=1.602 *10^-19*n*mu;
p=(1/b);
disp(p,"resistivity,p(ohm-m) = ")
