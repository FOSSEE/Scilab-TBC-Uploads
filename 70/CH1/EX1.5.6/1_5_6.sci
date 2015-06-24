//page 36
clear;
close;
clc;
a=[1 -1 0 0;-1 2 -1 0;0 -1 2 -1;0 0 -1 2]; 
disp(a,'a=')
b=[1;1;1;1]
disp(b,'b=')
disp('Given Equation ,ax=b')
[L,U]=lu(a);
disp(U,'U=');
disp(L,'L=');
disp('Augmented Matrix of L and b=');
A=[L b];
disp(A) 
c=zeros(4,1);
n=4;
//Algorithm Finding the value of c
c(1)=A(1,n+1)/A(1,1);
for i=2:n;
    sumk=0;
    for k=1:n-1
        sumk=sumk+A(i,k)*c(k);
    end
    c(i)=(A(i,n+1)-sumk)/A(i,i)
end
disp(c,'c=')
x=zeros(4,1);
disp('Augmented matrix of U and c=')
B=[U c];
disp(B) 
//Algorithm for finding value of x
x(n)=B(n,n+1)/B(n,n);
for i=n-1:-1:1;
    sumk=0;
    for k=i+1:n
        sumk=sumk+B(i,k)*x(k);
    end
    x(i)=(B(i,n+1)-sumk)/B(i,i);
end
disp(x,'x=') 
//end