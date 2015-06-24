//Find Magnetic strength
//Ex:14.5
clc;
clear;
close;
m=6000;
u_r=200000;
x=u_r-1;
h=m/x;
u_0=4*3.14*10^-7;
b=u_0*u_r*h;
disp(b,"Magnetic strength (in T) = ");