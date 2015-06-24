//Example 5.38
//Lagranges Interpolation Method
//Page no. 178
clc;close;clear;

x=[1,2,3,4,7]
y=[2,4,8,16,128]
x0=5
printf('\tx\ty=f(x)\n-----------------------\n')
for i=1:5
    printf('x%i\t%i\t  %i\n',i-1,x(i),y(i))
end
p=1;p1=1;i=1;
for k=1:5
    for j=1:5
        if k~=j then
            p=p*(x0-x(j))
            p1=p1*(x(k)-x(j))
        end
end
L(k)=p/p1
p=1;p1=1;
end
p=0;
for i=1:5
    printf('\n L%i (x) = %g\n',i-1,L(i))
    p=p+L(i)*y(i)
end
disp(p,"P(5) = ")