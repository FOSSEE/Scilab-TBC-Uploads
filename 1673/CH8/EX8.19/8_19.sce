//boundary value problem by cubisc spline nethod
//example 8.18
//page 331
clc;clear;close;
h=1/2;
//arranging in two subintervals we get
A=[10 -1 0 24;0 16 -1 -32;1 20 0 16;0 1 26 -24];
C=[36;-12;24;-9];
X=A^-1*C
printf('the computed value of y(1.5) is %f ',X(4,1));
