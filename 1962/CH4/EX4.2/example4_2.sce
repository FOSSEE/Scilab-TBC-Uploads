
//example 4.2
//page 161
clc; funcprot(0);
// Initialization of Variable
h=2;
d=2.5/100;
g=9.81;
pi=3.14;
Cd=0.65;//coeff of discharge
A=pi*d^2/4;
Q=Cd*A*sqroot(2*g*h);
disp(Q*1000,"flow rate(l/s)=");
clear
