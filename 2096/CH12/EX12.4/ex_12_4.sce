//Example 12.4 // the water flow rate
clc;
clear;
close;
//given data :
D1=0.2; // in m
D2=0.1; // in m
h=220; // in mm
Cd=0.98; 
ph=13.6;
pw=1; // in Kg/m^3
g=9.81; 
P=g*h*10^-3*(ph-pw)*1000;
M=1/sqrt(1-(D2/D1)^4)
A2=(%pi/4)*D2^2;
Q=(Cd*M*A2*sqrt((2*g/g*1000)*P))*10^-3;
disp(Q,"water flow rate,Q(m^3/s) = ")
