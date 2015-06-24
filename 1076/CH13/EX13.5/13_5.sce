clear;
clc

E=1.1
V=1
xg=.7
xt=.1
x1=.2
X1=x1+xg+xt
X2=.2
xL=.5
xC=-.5


X=X1+X2
P1=E*V/X
mprintf("\n(a) Steady State limit = %.4f", P1)

X3=xL
X=((X1*X2) + (X2*X3) + (X1*X3))/X3
P2=E*V/X
mprintf("\n(b) Steady State limit = %.4f", P2)

X3=xC
X=((X1*X2) + (X2*X3) + (X1*X3))/X3
P3=E*V/X
mprintf("\n(c) Steady State limit = %.3f", P3)

X=X1+xC+X2
P4=E*V/X
mprintf("\n(d) Steady State limit = %.2f", P4)

