//caption:obtain_time_response
//example 12_59
//page 590
s=%s;
syms t
A=[-1 0;1 -1]
B=[0 1]'
x0=[1 0]'
[r c]=size(A);//size of matrix A
p=s*eye(r,c)-A;//s*I-A where I is identity matrix
q=det(p)//determinant of sI-A
r=inv(p)//inverse of sI-A
m=r*B*(1/s)
r1=r*x0
X=r1+m
//for calculating zero state response
x=[0;0]
x(1,1)=ilaplace(X(1,1),s,t);
x(2,1)=ilaplace(X(2,1),s,t);
disp(x,"zero input response of the system,x(t)=");
