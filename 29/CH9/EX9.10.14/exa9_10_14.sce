//caption:obtain_time_response_using_diagonalization_process
//example 9.10.14
//page 398
syms m11 m22 m21 m12 t;
s=%s;
poly(0,"l");
A=[1 4;-2 -5]
B=[0;1]
C=[1;0]'
x0=[1 0]'
[r c]=size(A);//size of matrix A
I=eye(r,c);
p=l*I-A;//l*I-A where I is identity matrix
q=det(p)//determinant of lI-A

//roots of q are -1 and -3
l1=-1;
l2=-3;
//for determining modal matrix
x1=[m11;m21]
q1=(l1*I-A)*x1
//on solving we find m11=1, m21=-0.5
m11=1;m21=-0.5
x2=[m12;m22]
q2=(l2*I-A)*x1
//on solving we find m12=1, m22=-1
m12=1;m22=-1
M=[m11 m12;m21 m22]
M1=inv(M);
k1=M1*A*M;
z0=M1*x0;
k2=M1*B
Z=inv(s*I-k1)*z0+(inv(s*I-k1)*k2)*(1/s);
X=M*Z
x=[0;0]
x(1,1)=ilaplace(X(1,1),s,t);
x(2,1)=ilaplace(X(2,1),s,t);
y=C*x
disp(y,"output_equation_is,y(t)=")