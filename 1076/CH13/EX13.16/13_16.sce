clear;
clc

E=1.5
V=1
xg=1
xm=1

xt1=.1
xt2=.1
x1=.4
x2=.4
xl=(x1*x2)/(x1+x2)
X1=xl+xg+xt1
X2=xt2+xm
xL=.8
xC=-.8


X3=xC
X=((X1*X2) + (X2*X3) + (X1*X3))/X3
P1=E*V/X
mprintf("\n(a) Steady State limit = %.3f", P1)

X3=xL
X=((X1*X2) + (X2*X3) + (X1*X3))/X3
P2=E*V/X
mprintf("\n(b) Steady State limit = %.3f", P2)
