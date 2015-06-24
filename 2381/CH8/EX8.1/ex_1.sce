//Example 1 // Speed
clc;
clear;
close;
//given data :
m1=0.1;// in kg
g=9.81;// in m/s^2
T=m1*g;// N
A=10^-6;// in m^2
p=9.81*10^3;// in kg/m^3
m=A*p;// in kg/m
v=sqrt(T/m);
disp(v,"The speed of transverse waves,v(m/s) = ")
