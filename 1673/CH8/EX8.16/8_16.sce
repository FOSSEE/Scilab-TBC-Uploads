//boundary value problem using finite difference method
//example 8.16
//page 329
clc;clear;close;
deff('y=f(x)','y=sinh(x)')
y0=0//y(0)=0;
y4=3.62686//y(2)=3.62686
h1=0.5;
Y=f(0.5)
//arranging and calculating the values
A=[-9 4 0;4 -9 4;0 4 -9];
C=[0;0;-14.50744];
X=A^-1*C
printf('computed value with h=%f of y(0.5) is %f\n',h1,X(1,1))
printf('error in the result with actual value %f\n',abs(Y-X(1,1)) )
h2=1.0;
y0=0//y(0)=0;
y2=3.62686//y(2)=3.62686
y1=(y0+y2)/3;
Y=(4*X(2,1)-y1)/3;
printf('with better approximation error is reduced to %f',abs(Y-f(1.0)));