//Example 5.37
//Lagranges Interpolation Method
//Page no. 177
clc;close;clear;

x=[0,1,2,5]
y=[2,3,12,147]
x0=poly(0,'x')
printf('\tx\ty=f(x)\n-----------------------\n')
for i=1:4
    printf('x%i\t%i\t  %i\n',i-1,x(i),y(i))
end
p=1;p1=1;i=1;
for k=1:4
    for j=1:4
        if k~=j then
            p=p*(x0-x(j))
            p1=p1*(x(k)-x(j))
        end
end
L(k)=p/p1
p=1;p1=1;
end
p=0;
for i=1:4
    disp(L(i),"L(x) = ")
    p=p+L(i)*y(i)
end
disp(p,"P(x) = ")