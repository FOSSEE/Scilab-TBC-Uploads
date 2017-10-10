syms m11 m12 m13 m21 m22 m23 m31 m32 m33 ^ t m
s=%s;
poly(0,"l");
A=[3 -2;-1 2]

[r c]=size(A)
I=eye(r,c);
p=l*I-A;
q=det(p); // determinant of li-p
// roots of q are
l1=1;
l2=4;

x1=[m11;m21];
q1=(l1*I-A)*1

//on solving
m11=1;
m21=1;

x2=[m12;m22];
q2=(l2*I-A)*1
//on solving;
m12=2;
m22=-1;





// modal matrix is
M=[m11 m12;m21 m22]


q=inv(M)
A1=real(q*A*M)
