clc;
clear;
T1=[1 2 1];
T2=[0 1 1];
n=max(size(T1));
a=n-1;
b=a;
T3=zeros(1,a+b+1);
for i=1:n
    b=n-1;
    for j=1:n
        T3(a+b+1)=T3(a+b+1)+(T1(i)*T2(j));
        b=b-1;
    end
    a=a-1;
end
m=max(size(T3));
i=1;
j=m;
while(i<=floor(m/2) & j>=(ceil(m/2)+1))
        t=T3(i);
        T3(i)=modulo(T3(j),3);
        T3(j)=modulo(t,3);
        i=i+1;
        j=j-1;
end
T3(ceil(m/2))=modulo(T3(ceil(m/2)),3);
disp("Top row of the below matrix is powers of the transfer function and bottom row is of coefficients of respective powers");
disp([4 3 2 1 0]);
disp(T3);