

//exapple 5.3 
clc; funcprot(0);
// Initialization of Variable
n=0.011;
h=0.12;
Q=25/10000;
//calculation
deff('y=f(x)','y=1/x^2-1');
x=fsolve(0.1,f);
theta=2*atan(x);
A=h*2*h/tan(theta/2)/2;
P=2*h*sqrt(2);
s=Q^2*n^2*P^(4/3)/A^(10/3);
disp(s,"the slope of channel in (radians):")
