//example5.4
//constructing Routh array in scilab
clear;clc
xdel(winsid());//close all windows
mode(0);
s=%s;
A=s^3+8*s^2+26*s+40;

//consider p-plane is located to the left of the s-plane. 
//distance between p-plane and s-plane is 1.
//if the origin is shifted from s-plane to the p-plane,then, s=p-1

z=%z
B=z^3+5*z^2+13*z+21;//substituting s=p-1 in the equation of A, the resulting equation will be
routh_t(B)
