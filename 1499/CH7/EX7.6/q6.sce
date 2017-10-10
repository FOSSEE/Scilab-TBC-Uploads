syms m11 m12 m13 m21 m22 m23 m31 m32 m33 ^
s=%s;
poly(0,"l");
A=[-3 1;1 -3]
[r c]=size(A)
I=eye(r,c);
p=l*I-A;
q=det(p); // determinant of li-p
// roots of q are
l1=-2;
l2=-4;

x1=[m11;m21];
q1=(l1*I-A)*1
// on solving we find m11=1 m21=1
m11=1;
m21=1;
x2=[m12;m22];
q2=(l2*I-A)*1
// on solving we find m12=1 m22=-1
m12=1;
m22=-1;
// modal matrix is
M=[m11 m12;m21 m22;]
