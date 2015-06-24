clc
syms r l m
x=r*cos(l)*sin(m)
y=r*sin(l)*sin(m)
z=r*cos(m)
a=diff(x,r)
b=diff(x,m)
c=diff(x,l)
d=diff(y,r)
e=diff(y,m)
f=diff(y,l)
g=diff(z,r)
h=diff(z,m)
i=diff(z,l)
A=[a b c;d e f;g h i]
det(A)