//Example 11.14
clc;
clear;
close;
format('v',6);
//Given data :
B=1;//meter
b=0.4;//meter
H=0.57;//meter
h=0.5;//meter
A=B*H;//m^2
g=9.81;//gravity constant
a=b*h;//m^2
Q=A*a/sqrt(A^2-a^2)*sqrt(2*g*(H-h));//m^3/sec
disp(Q,"Discharge in m^3/sec : ");
