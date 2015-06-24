clc
syms x y z
v=(x^2+y^2+z^2)^(-1/2)
a=diff(v,x,2)
b=diff(v,y,2) 
c=diff(v,z,2)
a+b+c