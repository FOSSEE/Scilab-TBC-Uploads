//Example 15.8
//find bandwidth of the transfer function
clear;clc;
xdel(winsid());

s=%s;
O=6;
R=(s^2+2*s+6);
tf=O/R

disp("when O/R(jw)=6/sqrt(w^4-8*w+36)")

w=[+2 -2] //after differentiation and simplification

disp("when O/R(jw)=6/sqrt(w^4-8*w+36), At w=+-2")

peak=3/sqrt(5)


