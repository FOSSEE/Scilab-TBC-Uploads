clc
syms x y 
u=x^y
a=diff(u,y)
b=diff(a,x)
c=diff(b,x)
d=diff(u,x)
e=diff(d,y)
f=diff(e,x)
disp('clearly,c=f')