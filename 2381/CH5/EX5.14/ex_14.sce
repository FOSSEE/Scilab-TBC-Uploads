//Example 14 // Energy flux 
clc;
clear;
close;
//given data :
A=.10;// in m
w=4;// in per sec
k=0.1;// in per cm
p=1.25*10^3;// in kg/m^3
v=w*10^-2/k;// in m/s
n=w/(2*%pi);
Ef=2*%pi^2*n^2*A^2*p*v;
disp(Ef,"Energy flux of the wave,Ef(W/m^2) = ")
