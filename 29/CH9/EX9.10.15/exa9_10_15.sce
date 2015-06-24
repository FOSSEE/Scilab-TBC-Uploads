//caption:obtain_time_response_using_diagonalization_process
//example 9.10.15
//page 403
syms t;
s=%s;
poly(0,"l");
A=[0 1;-6 -5]
B=[0;1]
C=[6 1]
x0=[1 0]'
[r c]=size(A);//size of matrix A
I=eye(r,c);
p=l*I-A;//l*I-A where I is identity matrix
q=det(p)//determinant of lI-A
//roots of q are -1 and -3
l1=-2;
l2=-3;
//for determining vandermonde's matrix
P=[1 1;l1 l2];
P1=inv(P);
k1=P1*A*P;
z0=P1*x0;
k2=P1*B
Z=inv(s*I-k1)*z0+(inv(s*I-k1)*k2)*(1/s);
X=P*Z
X(2,1)=-5/(s^2+5*s+6)
x=[0;0]
x(1,1)=ilaplace(X(1,1),s,t);
x(2,1)=ilaplace(X(2,1),s,t);
y=C*x
y=simple(y)
disp(y,"output_equation_is,y(t)=")