clear;
clc;

s1=30e6;
v1=132e3;
s2=20e6;
v2=11e3;
v3=6.6e3;
s3=10e3;

xa=.07;
xb=.09;
xc=.04;
va=v1;
vb=v1;
vc=v2;
sa=s1;
sb=s1;
sc=s2;

Sb=s1;
Vb1=v1;
Vb2=v2;
Vb3=v3;

Xa=xa * (va/Vb1)^2 * (Sb/sa);
Xb=xb * (vb/Vb1)^2 * (Sb/sb);
Xc=xc * (vc/Vb2)^2 * (Sb/sc);

X = [1 1 0; 1 0 1; 0 1 1 ]^(-1) * [ Xa; Xb; Xc];

mprintf("\nX1= %.2f pu",X(1,1));
mprintf("\nX2= %.2f pu",X(2,1));
mprintf("\nX3= %.2f pu",X(3,1));
