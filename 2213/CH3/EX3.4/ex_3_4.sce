//Example 3.4 // thickness of copper deposited
clc;
clear;
close;
//given data :
A=0.00025;//in m^2
D=8900;//in kg/m^3
Z=32.95*10^-8;//in kg/C
I=1;//in A
t=100*60;//in seconds
m=Z*I*t;//in kg
v=m/D;
T=(v/A)*10^3;
disp(T,"thickness of copper deposited,T(mm) = ")
