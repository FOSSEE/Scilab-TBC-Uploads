clc
syms r l z
x=r*cos(l)
y=r*sin(l)
m=z
a=diff(x,r)
b=diff(x,l)
c=diff(x,z)
d=diff(y,r)
e=diff(y,l)
f=diff(y,z)
g=diff(m,r)
h=diff(m,l)
i=diff(m,z)
A=[a b c;d e f;g h i]
det(A)