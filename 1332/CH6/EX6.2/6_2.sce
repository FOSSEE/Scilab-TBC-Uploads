//Example 6.2
//Gaussian Elimination Method for Tri-Diagonal System
//Page no. 222
clc;clear;close;

//equation matrix
A=[1,2,0,0;2,3,-1,0;0,4,2,3;0,0,2,-1];
K=[5;5;11;10];i=1;

//initialization
w(1)=A(1,2)/A(1,1);
g(1)=K(1)/A(1,1);
printf('\nw(%i)=%f',i,w(i));printf('\ng(%i)=%f',i,g(i))

//computation
for i=2:3
    w(i)=(A(i,i+1))/(A(i,i)-A(i,i-1)*w(i-1))
    g(i)=(K(i)-A(i,i-1)*g(i-1))/(A(i,i)-A(i,i-1)*w(i-1))
    printf('\nw(%i)=%f',i,w(i))
    printf('\ng(%i)=%f',i,g(i))
end
i=4
m=-2
g(i)=m*(K(i)-A(i,i-1)*g(i-1))/(A(i,i)-A(i,i-1)*w(i-1))
x(i)=g(i)
printf('\ng(%i)=%f',i,g(i))
printf('\n\nx(%i)=%f',i,x(i))

//solution
for i=3:-1:1
    x(i)=g(i)-w(i)*x(i+1)
    printf('\n\nx(%i)=%f',i,x(i))
end