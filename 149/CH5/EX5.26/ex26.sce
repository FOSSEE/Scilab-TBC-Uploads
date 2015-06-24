clc
syms x1 x2 x3
y1=(x2*x3)/x1
y2=(x3*x1)/x2
y3=(x1*x2)/x3
a=diff(y1,x1)
b=diff(y1,x2)
c=diff(y1,x3)
d=diff(y2,x1)
e=diff(y2,x2)
f=diff(y2,x3)
g=diff(y3,x1)
h=diff(y3,x2)
i=diff(y3,x3)
A=[a b c;d e f;g h i]
det(A)