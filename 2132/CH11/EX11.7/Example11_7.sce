//Example 11.7
clc;
clear;
close;
format('v',6);
//Given data :
Cd=0.62;//constant
Q=250;//litres/sec
Q=Q*10^-3;//m^3/s
theta=90;//degree
g=9.81;//constant
d=1.3;//meter
H=(Q/8*15/Cd/sqrt(2*g)/tand(theta/2))^(2/5);//m
h=d-H;//meter
disp(h,"Position above the bed in meter : ");
