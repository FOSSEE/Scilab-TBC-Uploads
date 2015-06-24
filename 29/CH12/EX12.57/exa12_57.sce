//caption:obtain_time_response
//example 12_57
//page 586
s=%s;
syms t
A=[0 1;-2 -3]
B=[1 0]'
x0=[0 0]'
u=1/(s+1)
[r c]=size(A);//size of matrix A
p=s*eye(r,c)-A;//s*I-A where I is identity matrix
q=det(p)//determinant of sI-A
r=inv(p)//inverse of sI-A
m=r*B*(1/(s+1));
//for calculating zero state response
x=[0;0]
x(1,1)=ilaplace(m(1,1),s,t);
x(2,1)=ilaplace(m(2,1),s,t);
disp(x,"time response of the system,x(t)=");
