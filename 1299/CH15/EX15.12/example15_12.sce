//Example 15.12
//prove the solution of the equation
clear;clc;
xdel(winsid());
//assuming n=1
n=1;
z=%z;
y(n)=z^n;
y(n+1)=z^(n+1);
y(n+2)=z^(n+2);
A=y(n+2)+3*y(n+1)+2*y(n)
B=A/z
roots(z^2+3*z+2)
disp("y(n)=z^n is solution of polynomial equation (z+2)*(z+1)=0")
