//Example 15 53
//state space model of differential equation.
clear;clc;
xdel(winsid());

// converting the differential equation in terms of transfer function.
s=%s
//transfer function
A=1/(s^3+6*s^2+11*s+6)
B=tf2ss(A)
