//Example 3.5 // thickness of copper deposited
clc;
clear;
close;
//given data :
A=0.00025;//in m^2
D=8900;//in kg/m^3
Z=32.95*10^-8;//in kg/C
I=1.5;//in A
t=60*60;//in seconds
m=Z*I*t;//in kg
v=m/D;
T=(v/A);
disp("Thickness of copper deposited is "+string(T)+"m or "+string(T*10^3)+"mm")
