//Example 10.4
//Lipunov's method
clear;clc;
xdel(winsid());

x1=poly(0,'x1');
x2=poly(0,'x2');
x11=poly(0,'x11');
x22=poly(0,'x22');
x2=x11
//assuming K1 and K2 equal to one.
disp("W=x1^2+x2^2")
//"W=x1^2+x2^2" is Liapunov's function 
//W is chosen arbitrarily, since there no standard procedure for selecting W.
disp("dW/dt=2*x1*x11+2*x2*x22=-2*(x2^2+x2^4)")
disp("This will be negative semidefinite and therefore the system will be stable")
