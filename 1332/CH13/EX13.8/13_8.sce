//Example 13.8
//Application
//Page no. 433
clc;close;clear;

deff('y=f(x)','y=2/x^2')
a=1;b=2;a1=1;b1=0;
N=4;
h=(b-a)/(N+1);
for j=1:N
    s(j)=f(a+j*h)
end
for i=1:N
    for j=1:N
        if abs(i-j)==1 then
            A(i,j)=-1
        end
        if i==j then
            A(i,j)=2+s(i)*h^2
        end
    end
    if i==1 then
        k(i,1)=s(i)+a1/h^2
    elseif i==N
        k(i,1)=s(i)+b1/h^2
    else
        k(i,1)=s(i)
    end
end
disp(A,'A = ')
disp(k,'k = ')