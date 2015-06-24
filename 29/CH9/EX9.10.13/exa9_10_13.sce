//caption:obtain_time_response
//example 9.10.13
//page 397
syms t;
A=[0 1;-2 0]
x0=[1 1]'
[r c]=size(A);//size of matrix A
//since exp(At)=I+A*t+(A*t)^2/2+(A*t)^3/3+...
I=eye(r,c)
p=I+A*t+(A*t)^2/2+(A*t)^3/3
x=p*x0;
disp(x(1,1),"time response of the system,x1(t)=");
disp(x(2,1),"time response of the system,x2(t)=");