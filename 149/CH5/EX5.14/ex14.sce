clc
syms x y
u=asin((x+y)/(x^0.5+y^0.5))
a=diff(u,x)
b=diff(u,y)
c=diff(a,x)
d=diff(b,y)
e=diff(b,x)
x*a+y*b
(1/2)*tan(u)
(x^2)*c+2*x*y*e+(y^2)*d
(-sin(u)*cos(2*u))/(4*(cos(u))^3)