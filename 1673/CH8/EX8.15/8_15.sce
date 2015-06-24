//boundary value problem using finite difference method
//example 8.15
//page 328
clc;clear;close;
deff('y=f(x)','y=cos(x)+((1-cos(1))/sin(1))*sin(x)-1');
h1=1/2;
Y=f(0.5);
y0=0,y2=0;
y1=4*(1/4+y0+y2)/7
printf('computed value with h=%f of y(0.5) is %f\n',h1,y1)
printf('error in the result with actual value %f\n',abs(Y-y1) )
h2=1/4;
y0=0,y4=0;
//solving the approximated diffrential equation
A=[-31/16 1 0;1 -31/16 1;0 1 -31/16];
X=[-1/16;-1/16;-1/16];
C=A^-1*X;
printf('computed value with h=%f of y(0.5) is %f\n',h2,C(2,1))
printf('error in the result with actual value %f\n',abs(Y-C(2,1)))