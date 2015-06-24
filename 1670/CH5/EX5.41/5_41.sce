//Example 5.41
//Piecewise Cubic Hermite Interpolation Method
//Page no. 182
clc;close;clear;

x=[0,1]
y=[1,3]
y1=[0,6]
x0=poly(0,'x')
printf('\tx\ty=f(x)\n-----------------------\n')
for i=1:2
    printf('x%i\t%i\t  %i\n',i-1,x(i),y(i))
end
p=1;p1=1;i=1;
for k=1:2
    for j=1:2
        if k~=j then
            p=p*(x0-x(j))
            p1=p1*(x(k)-x(j))
        end
end
L(k)=p/p1
p=1;p1=1;
end
p=0;
L1=[-1,1]
for i=1:2
    disp(L(i),"L(x) = ")
    p=p+(1-2*L1(i)*(x0-x(i)))*L(i)^2*y(i)+(x0-x(i))*((L(i))^2)*y1(i)
end
disp(p,"P2(x) = ")
printf('\n\n\n\n\n')
x=[1,2]
y=[3,21]
y1=[6,36]
x0=poly(0,'x')
printf('\tx\ty=f(x)\n-----------------------\n')
for i=1:2
    printf('x%i\t%i\t  %i\n',i-1,x(i),y(i))
end
p=1;p1=1;i=1;
for k=1:2
    for j=1:2
        if k~=j then
            p=p*(x0-x(j))
            p1=p1*(x(k)-x(j))
        end
end
L(k)=p/p1
p=1;p1=1;
end
p=0;
L1=[-1,1]
for i=1:2
    disp(L(i),"L(x) = ")
    p=p+(1-2*L1(i)*(x0-x(i)))*L(i)^2*y(i)+(x0-x(i))*((L(i))^2)*y1(i)
end
disp(p,"P3(x) = ")