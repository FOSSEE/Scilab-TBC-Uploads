clear;
clc;

v1=220;
v2=132
vb1=220;
n=132/220
vb2=vb1*n

Sb=200;
Zb= vb2 *vb2/Sb;

x1=75;
x2=70;
x3=90

X1=x1/Zb;
X2=x2/Zb;
X3=x3/Zb;
X1=fix(X1*100)/100
X2=fix(X2*100)/100
X3=fix(X3*100)/100



Xt1=.08
Xt2=.08

X=((Xt1+X1)^-1 +(Xt2+X2)^-1 +(X3)^-1 )^-1;
X=fix(X*1000)/1000

dV=4
dS= Sb/X;
dQ=round(dS*1000/vb2)*1e-3 * dV

mprintf("\n(a)\n X1= %.2f pu; X2= %.2f pu; X3= %.2f pu", X1, X2, X3)
mprintf("\n(b)\n VAR injected = %.2f MVAR",dQ)
