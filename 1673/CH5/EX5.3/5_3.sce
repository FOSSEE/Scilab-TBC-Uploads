//cubic splines
//example 5.3
//page 188
clc;clear;close;
X=[1 2 3];
y=[-8 -1 18];
M1=0,M2=8,M3=0;
h=1;
deff('y=s1(x)','y=3*(x-1)^3-8*(2-x)-4*(x-1)')
deff('y=s2(x)','y=3*(3-x)^3+22*x-48');
h=0.0001;n=2.0;
D=(s2(n+h)-s2(n))/h;
a=poly(0,'x');
disp(s1(a),' s1(x)=');
disp(s2(a),'s2(x)=');
disp(s2(2.5),'y(2.5)=');
disp(D,'y1(2.0)=');
