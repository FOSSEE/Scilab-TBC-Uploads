clc
syms r l
x=r*cos(l)
y=r*sin(l)
a=diff(x,r)
b=diff(x,l)
c=diff(y,r)
d=diff(y,l)
A=[a b;c d]
det(A)