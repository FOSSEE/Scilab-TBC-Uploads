syms m11 m12 m13 m21 m22 m23 m31 m32 m33 ^
s=%s;
poly(0,"l");
A=[0 1 0;3 0 2;-12 -7 -6]
[r c]=size(A)
I=eye(r,c);
p=l*I-A;
q=det(p); // determinant of li-p
// roots of q are
l1=-1;
l2=-2;
l3=-3;
x1=[m11;m21;m31];
q1=(l1*I-A)*1

//on solving
m11=1;
m21=-1;
m31=-1;
x2=[m12;m22;m32];
q2=(l2*I-A)*1
//on solving;
m12=2;
m22=-4;
m32=1;

x3=[m13;m23;m33];
q3=(l3*I-A)*1
//on solving
m13=1;
m23=-3;
m33=3;

// modal matrix is
M=[m11 m12 m13;m21 m22 m23;m31 m32 m33]
