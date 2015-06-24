//Example 11 // Frequency
clc;
clear;
close;
//given data :
Y=7.1*10^10;// in N/m^2
p=2.7*10^3;// in kg/m^3
r=0.005;// in m
vu=sqrt(Y/p);
k=r/2;
v=vu/(2*%pi*k);
disp(v," The frequency,v(Hz) = ")
