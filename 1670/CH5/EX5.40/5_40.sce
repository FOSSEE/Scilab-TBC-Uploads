//Example 5.40
//Hermite Interpolation Method
//Page no. 182
clc;close;clear;

x=[0,1,2]
y=[1,3,21]
y1=[0,6,36]
x0=poly(0,'x')
printf('\tx\ty=f(x)\n-----------------------\n')
for i=1:3
    printf('x%i\t%i\t  %i\n',i-1,x(i),y(i))
end
p=1;p1=1;i=1;
for k=1:3
    for j=1:3
        if k~=j then
            p=p*(x0-x(j))
            p1=p1*(x(k)-x(j))
        end
end
L(k)=p/p1
p=1;p1=1;
end
p=0;
L1=[-3/2,0,3/2]
for i=1:3
    disp(L(i),"L(x) = ")
    p=p+(1-2*L1(i)*(x0-x(i)))*L(i)^2*y(i)+(x0-x(i))*((L(i))^2)*y1(i)
end
disp(p,"P(x) = ")