//Example 2.8
//Z transform of the signal x(n)=(0.5)^n*u(n)
clear;clc;
xdel(winsid());

//u(n)is unit step input 
n=2;
x=(0.5)^n;
m=1;
w=1;
phi=tand(0);
a=1;
theta=tand(45);
[cxz]=czt(x,m,w,phi,a,theta)
