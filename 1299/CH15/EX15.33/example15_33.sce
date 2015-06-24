//Example 15.33
//Lipunov's method
clear;clc;
xdel(winsid());

x1=poly(0,'x1');
x2=poly(0,'x2');
x11=poly(0,'x11');
x22=poly(0,'x22');
x2=x11
disp("x22+x2+x2^3+x1=0")
//(x1,x2) has singular point at (0,0)
disp("V=x1^2+x2^2")
//"V=x1^2+x2^2" is Liapunov's function 
//V is positive for all values of x1 and x2, except at x1=x2=0
disp("dV/dt=2*x1*x2-2*x1*x2-2*x2^2-2*x2^4=-2*x2^2-2*x2^4")
disp("dV/dt will never be positive hence origin is stable")
