//Example 5.36
//Lagrange's Interpolation Method
//Page no. 176
clc;close;clear;

x=[7,8,9,10]
y=[3,1,1,9]
x0=9.5
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
    printf('\n L%i (x) = %g\n',i-1,L(i))
    p=p+L(i)*y(i)
end
disp(p,"P(9.5) = ")