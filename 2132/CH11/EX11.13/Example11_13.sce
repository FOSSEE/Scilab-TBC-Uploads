//Example 11.13
clc;
clear;
close;
format('v',7);
//Given data :
w=1.5;//m
d=0.75;//m
Cd=0.64;//Coeff of discharge
QT=45;//cumec
h=8;//meter
A=w*d;//m^2
g=9.81;//gravity acceleration
Q=Cd*A*sqrt(2*g*h);//m^3/sec
n=QT/Q;//no. of spillways
disp(round(n),"No. of spillways : ");
