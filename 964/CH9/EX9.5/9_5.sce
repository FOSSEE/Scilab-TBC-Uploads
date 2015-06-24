clc;
clear;
n=3;
b(1)=7.85;
b(2)=-19.3;
b(3)=71.4;
a=[3 -0.1 -0.2;0.1 7 -0.3;0.3 -0.2 10];
for k=1:n-1
    for i=k+1:n
        fact=a(i,k)/a(k,k);
        for j=k+1:n
            a(i,j)=a(i,j)-fact*(a(k,j));
        end
        b(i)=b(i)-fact*b(k);
    end
end
x(n)=b(n)/a(n,n);
for i=n-1:-1:1
    s=b(i);
    for j=i+1:n
        s=s-a(i,j)*x(j)
    end
    x(i)=b(i)/a(i,i);
end
disp(x(1),"x1=")
disp(x(2),"x2=")
disp(x(3),"x3=")
