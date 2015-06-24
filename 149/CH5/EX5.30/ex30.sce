clc
syms x y 
u=x*(1-y^2)^0.5+y*(1-x^2)^0.5
v=asin(x)+asin(y)
a=diff(u,x)
b=diff(u,y)
c=diff(v,x)
d=diff(v,y)
A=[a b; c d ]
det(A)